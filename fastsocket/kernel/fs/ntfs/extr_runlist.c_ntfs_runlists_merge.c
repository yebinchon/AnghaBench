
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_26__ {int vcn; int length; scalar_t__ lcn; } ;
typedef TYPE_1__ runlist_element ;
typedef void* VCN ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ERANGE ;
 TYPE_1__* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 scalar_t__ LCN_ENOENT ;
 scalar_t__ LCN_HOLE ;
 scalar_t__ LCN_RL_NOT_MAPPED ;
 scalar_t__ likely (int) ;
 int ntfs_debug (char*,...) ;
 int ntfs_debug_dump_runlist (TYPE_1__*) ;
 int ntfs_error (int *,char*) ;
 int ntfs_free (TYPE_1__*) ;
 TYPE_1__* ntfs_rl_append (TYPE_1__*,int,TYPE_1__*,int,int) ;
 TYPE_1__* ntfs_rl_insert (TYPE_1__*,int,TYPE_1__*,int,int) ;
 int ntfs_rl_mm (TYPE_1__*,int,int ,int) ;
 TYPE_1__* ntfs_rl_realloc (TYPE_1__*,int,int) ;
 TYPE_1__* ntfs_rl_realloc_nofail (TYPE_1__*,int,int) ;
 TYPE_1__* ntfs_rl_replace (TYPE_1__*,int,TYPE_1__*,int,int) ;
 TYPE_1__* ntfs_rl_split (TYPE_1__*,int,TYPE_1__*,int,int) ;
 scalar_t__ unlikely (int) ;

runlist_element *ntfs_runlists_merge(runlist_element *drl,
  runlist_element *srl)
{
 int di, si;
 int sstart;
 int dins;
 int dend, send;
 int dfinal, sfinal;

 int marker = 0;
 VCN marker_vcn = 0;
 if (unlikely(!srl))
  return drl;
 if (IS_ERR(srl) || IS_ERR(drl))
  return ERR_PTR(-EINVAL);


 if (unlikely(!drl)) {
  drl = srl;

  if (unlikely(drl[0].vcn)) {

   for (dend = 0; likely(drl[dend].length); dend++)
    ;
   dend++;
   drl = ntfs_rl_realloc(drl, dend, dend + 1);
   if (IS_ERR(drl))
    return drl;

   ntfs_rl_mm(drl, 1, 0, dend);
   drl[0].vcn = 0;
   drl[0].lcn = LCN_RL_NOT_MAPPED;
   drl[0].length = drl[1].vcn;
  }
  goto finished;
 }

 si = di = 0;


 while (srl[si].length && srl[si].lcn < LCN_HOLE)
  si++;


 BUG_ON(!srl[si].length);


 sstart = si;






 for (; drl[di].length; di++) {
  if (drl[di].vcn + drl[di].length > srl[sstart].vcn)
   break;
 }
 dins = di;


 if ((drl[di].vcn == srl[si].vcn) && (drl[di].lcn >= 0) &&
   (srl[si].lcn >= 0)) {
  ntfs_error(((void*)0), "Run lists overlap. Cannot merge!");
  return ERR_PTR(-ERANGE);
 }


 for (send = si; srl[send].length; send++)
  ;
 for (dend = di; drl[dend].length; dend++)
  ;

 if (srl[send].lcn == LCN_ENOENT)
  marker_vcn = srl[marker = send].vcn;


 for (sfinal = send; sfinal >= 0 && srl[sfinal].lcn < LCN_HOLE; sfinal--)
  ;
 for (dfinal = dend; dfinal >= 0 && drl[dfinal].lcn < LCN_HOLE; dfinal--)
  ;

 {
 bool start;
 bool finish;
 int ds = dend + 1;
 int ss = sfinal - sstart + 1;

 start = ((drl[dins].lcn < LCN_RL_NOT_MAPPED) ||
    (drl[dins].vcn == srl[sstart].vcn));
 finish = ((drl[dins].lcn >= LCN_RL_NOT_MAPPED) &&
   ((drl[dins].vcn + drl[dins].length) <=
    (srl[send - 1].vcn + srl[send - 1].length)));


 if (finish && !drl[dins].length)
  ss++;
 if (marker && (drl[dins].vcn + drl[dins].length > srl[send - 1].vcn))
  finish = 0;






 if (start) {
  if (finish)
   drl = ntfs_rl_replace(drl, ds, srl + sstart, ss, dins);
  else
   drl = ntfs_rl_insert(drl, ds, srl + sstart, ss, dins);
 } else {
  if (finish)
   drl = ntfs_rl_append(drl, ds, srl + sstart, ss, dins);
  else
   drl = ntfs_rl_split(drl, ds, srl + sstart, ss, dins);
 }
 if (IS_ERR(drl)) {
  ntfs_error(((void*)0), "Merge failed.");
  return drl;
 }
 ntfs_free(srl);
 if (marker) {
  ntfs_debug("Triggering marker code.");
  for (ds = dend; drl[ds].length; ds++)
   ;

  if (drl[ds].vcn <= marker_vcn) {
   int slots = 0;

   if (drl[ds].vcn == marker_vcn) {
    ntfs_debug("Old marker = 0x%llx, replacing "
      "with LCN_ENOENT.",
      (unsigned long long)
      drl[ds].lcn);
    drl[ds].lcn = LCN_ENOENT;
    goto finished;
   }





   if (drl[ds].lcn == LCN_ENOENT) {
    ds--;
    slots = 1;
   }
   if (drl[ds].lcn != LCN_RL_NOT_MAPPED) {

    if (!slots) {
     drl = ntfs_rl_realloc_nofail(drl, ds,
       ds + 2);
     slots = 2;
    }
    ds++;

    if (slots != 1)
     drl[ds].vcn = drl[ds - 1].vcn +
       drl[ds - 1].length;
    drl[ds].lcn = LCN_RL_NOT_MAPPED;

    slots--;
   }
   drl[ds].length = marker_vcn - drl[ds].vcn;

   ds++;
   if (!slots)
    drl = ntfs_rl_realloc_nofail(drl, ds, ds + 1);
   drl[ds].vcn = marker_vcn;
   drl[ds].lcn = LCN_ENOENT;
   drl[ds].length = (s64)0;
  }
 }
 }

finished:

 ntfs_debug("Merged runlist:");
 ntfs_debug_dump_runlist(drl);
 return drl;
}
