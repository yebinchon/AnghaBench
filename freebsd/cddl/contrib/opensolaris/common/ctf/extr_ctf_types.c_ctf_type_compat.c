
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_5__ {int ctt_name; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;
struct TYPE_6__ {int ctr_index; int ctr_contents; int ctr_nelems; } ;
typedef TYPE_2__ ctf_arinfo_t ;
 int bcmp (int *,int *,int) ;
 int ctf_array_info (int *,int ,TYPE_2__*) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_strptr (int *,int ) ;
 scalar_t__ ctf_type_cmp (int *,int ,int *,int ) ;
 int ctf_type_encoding (int *,int ,int *) ;
 int ctf_type_kind (int *,int ) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 int ctf_type_size (int *,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int
ctf_type_compat(ctf_file_t *lfp, ctf_id_t ltype,
    ctf_file_t *rfp, ctf_id_t rtype)
{
 const ctf_type_t *ltp, *rtp;
 ctf_encoding_t le, re;
 ctf_arinfo_t la, ra;
 uint_t lkind, rkind;

 if (ctf_type_cmp(lfp, ltype, rfp, rtype) == 0)
  return (1);

 ltype = ctf_type_resolve(lfp, ltype);
 lkind = ctf_type_kind(lfp, ltype);

 rtype = ctf_type_resolve(rfp, rtype);
 rkind = ctf_type_kind(rfp, rtype);

 if (lkind != rkind ||
     (ltp = ctf_lookup_by_id(&lfp, ltype)) == ((void*)0) ||
     (rtp = ctf_lookup_by_id(&rfp, rtype)) == ((void*)0) ||
     strcmp(ctf_strptr(lfp, ltp->ctt_name),
     ctf_strptr(rfp, rtp->ctt_name)) != 0)
  return (0);

 switch (lkind) {
 case 131:
 case 133:
  return (ctf_type_encoding(lfp, ltype, &le) == 0 &&
      ctf_type_encoding(rfp, rtype, &re) == 0 &&
      bcmp(&le, &re, sizeof (ctf_encoding_t)) == 0);
 case 130:
  return (ctf_type_compat(lfp, ctf_type_reference(lfp, ltype),
      rfp, ctf_type_reference(rfp, rtype)));
 case 135:
  return (ctf_array_info(lfp, ltype, &la) == 0 &&
      ctf_array_info(rfp, rtype, &ra) == 0 &&
      la.ctr_nelems == ra.ctr_nelems && ctf_type_compat(
      lfp, la.ctr_contents, rfp, ra.ctr_contents) &&
      ctf_type_compat(lfp, la.ctr_index, rfp, ra.ctr_index));
 case 129:
 case 128:
  return (ctf_type_size(lfp, ltype) == ctf_type_size(rfp, rtype));
 case 134:
 case 132:
  return (1);
 default:
  return (0);
 }
}
