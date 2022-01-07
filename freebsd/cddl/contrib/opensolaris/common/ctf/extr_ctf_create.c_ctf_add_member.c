
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_20__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef scalar_t__ ushort_t ;
typedef scalar_t__ uint_t ;
typedef int ssize_t ;
typedef int ctf_id_t ;
struct TYPE_28__ {int ctf_flags; int ctf_dtstrlen; } ;
typedef TYPE_2__ ctf_file_t ;
struct TYPE_29__ {scalar_t__ cte_bits; } ;
typedef TYPE_3__ ctf_encoding_t ;
struct TYPE_31__ {char* dmd_name; int dmd_value; size_t dmd_offset; int dmd_type; } ;
struct TYPE_26__ {TYPE_5__ dtu_members; } ;
struct TYPE_27__ {int ctt_info; scalar_t__ ctt_size; int ctt_lsizelo; int ctt_lsizehi; } ;
struct TYPE_30__ {TYPE_1__ dtd_u; TYPE_20__ dtd_data; } ;
typedef TYPE_4__ ctf_dtdef_t ;
typedef TYPE_5__ ctf_dmdef_t ;


 int CTF_ERR ;
 scalar_t__ CTF_INFO_ISROOT (int ) ;
 scalar_t__ CTF_INFO_KIND (int ) ;
 scalar_t__ CTF_INFO_VLEN (int ) ;
 scalar_t__ CTF_K_STRUCT ;
 scalar_t__ CTF_K_UNION ;
 scalar_t__ CTF_LSIZE_SENT ;
 int CTF_MAX_SIZE ;
 scalar_t__ CTF_MAX_VLEN ;
 int CTF_SIZE_TO_LSIZE_HI (int) ;
 int CTF_SIZE_TO_LSIZE_LO (int) ;
 int CTF_TYPE_INFO (scalar_t__,scalar_t__,scalar_t__) ;
 int EAGAIN ;
 int ECTF_BADID ;
 int ECTF_DTFULL ;
 int ECTF_DUPMEMBER ;
 int ECTF_NOTSOU ;
 int ECTF_RDONLY ;
 int LCTF_DIRTY ;
 int LCTF_RDWR ;
 int MAX (int,int) ;
 int NBBY ;
 TYPE_5__* ctf_alloc (int) ;
 TYPE_4__* ctf_dtd_lookup (TYPE_2__*,int ) ;
 int ctf_free (TYPE_5__*,int) ;
 int ctf_get_ctt_size (TYPE_2__*,TYPE_20__*,int *,int *) ;
 int ctf_list_append (TYPE_5__*,TYPE_5__*) ;
 TYPE_5__* ctf_list_next (TYPE_5__*) ;
 TYPE_5__* ctf_list_prev (TYPE_5__*) ;
 int ctf_ref_inc (TYPE_2__*,int ) ;
 int ctf_set_errno (TYPE_2__*,int ) ;
 char* ctf_strdup (char const*) ;
 int ctf_type_align (TYPE_2__*,int ) ;
 int ctf_type_encoding (TYPE_2__*,int ,TYPE_3__*) ;
 int ctf_type_resolve (TYPE_2__*,int ) ;
 int ctf_type_size (TYPE_2__*,int ) ;
 int roundup (size_t,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strlen (char*) ;

int
ctf_add_member(ctf_file_t *fp, ctf_id_t souid, const char *name, ctf_id_t type)
{
 ctf_dtdef_t *dtd = ctf_dtd_lookup(fp, souid);
 ctf_dmdef_t *dmd;

 ssize_t msize, malign, ssize;
 uint_t kind, vlen, root;
 char *s = ((void*)0);

 if (!(fp->ctf_flags & LCTF_RDWR))
  return (ctf_set_errno(fp, ECTF_RDONLY));

 if (dtd == ((void*)0))
  return (ctf_set_errno(fp, ECTF_BADID));

 kind = CTF_INFO_KIND(dtd->dtd_data.ctt_info);
 root = CTF_INFO_ISROOT(dtd->dtd_data.ctt_info);
 vlen = CTF_INFO_VLEN(dtd->dtd_data.ctt_info);

 if (kind != CTF_K_STRUCT && kind != CTF_K_UNION)
  return (ctf_set_errno(fp, ECTF_NOTSOU));

 if (vlen == CTF_MAX_VLEN)
  return (ctf_set_errno(fp, ECTF_DTFULL));

 if (name != ((void*)0)) {
  for (dmd = ctf_list_next(&dtd->dtd_u.dtu_members);
      dmd != ((void*)0); dmd = ctf_list_next(dmd)) {
   if (dmd->dmd_name != ((void*)0) &&
       strcmp(dmd->dmd_name, name) == 0)
    return (ctf_set_errno(fp, ECTF_DUPMEMBER));
  }
 }

 if ((msize = ctf_type_size(fp, type)) == CTF_ERR ||
     (malign = ctf_type_align(fp, type)) == CTF_ERR)
  return (CTF_ERR);

 if ((dmd = ctf_alloc(sizeof (ctf_dmdef_t))) == ((void*)0))
  return (ctf_set_errno(fp, EAGAIN));

 if (name != ((void*)0) && (s = ctf_strdup(name)) == ((void*)0)) {
  ctf_free(dmd, sizeof (ctf_dmdef_t));
  return (ctf_set_errno(fp, EAGAIN));
 }

 dmd->dmd_name = s;
 dmd->dmd_type = type;
 dmd->dmd_value = -1;

 if (kind == CTF_K_STRUCT && vlen != 0) {
  ctf_dmdef_t *lmd = ctf_list_prev(&dtd->dtd_u.dtu_members);
  ctf_id_t ltype = ctf_type_resolve(fp, lmd->dmd_type);
  size_t off = lmd->dmd_offset;

  ctf_encoding_t linfo;
  ssize_t lsize;

  if (ctf_type_encoding(fp, ltype, &linfo) != CTF_ERR)
   off += linfo.cte_bits;
  else if ((lsize = ctf_type_size(fp, ltype)) != CTF_ERR)
   off += lsize * NBBY;
  off = roundup(off, NBBY) / NBBY;
  off = roundup(off, MAX(malign, 1));
  dmd->dmd_offset = off * NBBY;
  ssize = off + msize;
 } else {
  dmd->dmd_offset = 0;
  ssize = ctf_get_ctt_size(fp, &dtd->dtd_data, ((void*)0), ((void*)0));
  ssize = MAX(ssize, msize);
 }

 if (ssize > CTF_MAX_SIZE) {
  dtd->dtd_data.ctt_size = CTF_LSIZE_SENT;
  dtd->dtd_data.ctt_lsizehi = CTF_SIZE_TO_LSIZE_HI(ssize);
  dtd->dtd_data.ctt_lsizelo = CTF_SIZE_TO_LSIZE_LO(ssize);
 } else
  dtd->dtd_data.ctt_size = (ushort_t)ssize;

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(kind, root, vlen + 1);
 ctf_list_append(&dtd->dtd_u.dtu_members, dmd);

 if (s != ((void*)0))
  fp->ctf_dtstrlen += strlen(s) + 1;

 ctf_ref_inc(fp, type);
 fp->ctf_flags |= LCTF_DIRTY;
 return (0);
}
