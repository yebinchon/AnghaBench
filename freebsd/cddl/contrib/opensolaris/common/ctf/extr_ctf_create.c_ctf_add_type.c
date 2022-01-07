
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_65__ TYPE_9__ ;
typedef struct TYPE_64__ TYPE_8__ ;
typedef struct TYPE_63__ TYPE_7__ ;
typedef struct TYPE_62__ TYPE_6__ ;
typedef struct TYPE_61__ TYPE_5__ ;
typedef struct TYPE_60__ TYPE_4__ ;
typedef struct TYPE_59__ TYPE_3__ ;
typedef struct TYPE_58__ TYPE_2__ ;
typedef struct TYPE_57__ TYPE_1__ ;
typedef struct TYPE_56__ TYPE_10__ ;


typedef int ushort_t ;
typedef int uint_t ;
typedef int ssize_t ;
struct TYPE_59__ {scalar_t__ ctt_type; int ctt_info; int ctt_name; } ;
typedef TYPE_3__ ctf_type_t ;
typedef scalar_t__ ctf_id_t ;
struct TYPE_60__ {scalar_t__ h_type; } ;
typedef TYPE_4__ ctf_helem_t ;
typedef int ctf_hash_t ;
struct TYPE_61__ {scalar_t__ ctc_return; int ctc_flags; int ctc_argc; } ;
typedef TYPE_5__ ctf_funcinfo_t ;
struct TYPE_65__ {scalar_t__ dmd_type; } ;
struct TYPE_63__ {scalar_t__ ctr_contents; scalar_t__ ctr_index; int ctr_nelems; } ;
struct TYPE_58__ {TYPE_9__ dtu_members; TYPE_7__ dtu_enc; } ;
struct TYPE_57__ {int ctt_info; int ctt_size; int ctt_lsizelo; int ctt_lsizehi; } ;
struct TYPE_64__ {scalar_t__ dtd_type; TYPE_2__ dtd_u; TYPE_1__ dtd_data; int * dtd_name; } ;
struct TYPE_62__ {int ctf_flags; scalar_t__ ctf_dtoldid; TYPE_8__ ctf_dtdefs; int ctf_names; int ctf_enums; int ctf_unions; int ctf_structs; } ;
typedef TYPE_6__ ctf_file_t ;
typedef TYPE_7__ ctf_encoding_t ;
typedef TYPE_8__ ctf_dtdef_t ;
typedef TYPE_9__ ctf_dmdef_t ;
struct TYPE_56__ {scalar_t__ ctb_type; TYPE_8__* ctb_dtd; TYPE_6__* ctb_file; } ;
typedef TYPE_10__ ctf_bundle_t ;
typedef TYPE_7__ ctf_arinfo_t ;


 int CTF_ADD_ROOT ;
 scalar_t__ CTF_ERR ;
 int CTF_INFO_KIND (int ) ;
 int CTF_K_UNKNOWN ;

 int CTF_LSIZE_SENT ;
 int CTF_MAX_SIZE ;
 int CTF_SIZE_TO_LSIZE_HI (int ) ;
 int CTF_SIZE_TO_LSIZE_LO (int ) ;
 int CTF_TYPE_INFO (int,int,int) ;
 scalar_t__ CTF_TYPE_TO_INDEX (scalar_t__) ;
 int ECTF_CONFLICT ;
 int ECTF_CORRUPT ;
 int ECTF_RDONLY ;
 int LCTF_INFO_KIND (TYPE_6__*,int ) ;
 int LCTF_INFO_ROOT (TYPE_6__*,int ) ;
 int LCTF_INFO_VLEN (TYPE_6__*,int ) ;
 int LCTF_RDWR ;
 scalar_t__ bcmp (TYPE_7__*,TYPE_7__*,int) ;
 scalar_t__ ctf_add_array (TYPE_6__*,int,TYPE_7__*) ;
 scalar_t__ ctf_add_enum (TYPE_6__*,int,char const*) ;
 scalar_t__ ctf_add_float (TYPE_6__*,int,char const*,TYPE_7__*) ;
 scalar_t__ ctf_add_forward (TYPE_6__*,int,char const*,int const) ;
 scalar_t__ ctf_add_function (TYPE_6__*,int,TYPE_5__*,int *) ;
 scalar_t__ ctf_add_generic (TYPE_6__*,int,char const*,TYPE_8__**) ;
 scalar_t__ ctf_add_integer (TYPE_6__*,int,char const*,TYPE_7__*) ;
 scalar_t__ ctf_add_reftype (TYPE_6__*,int,scalar_t__,int) ;
 scalar_t__ ctf_add_typedef (TYPE_6__*,int,char const*,scalar_t__) ;
 scalar_t__ ctf_array_info (TYPE_6__*,scalar_t__,TYPE_7__*) ;
 int ctf_enum_iter (TYPE_6__*,scalar_t__,int ,TYPE_10__*) ;
 int ctf_errno (TYPE_6__*) ;
 TYPE_4__* ctf_hash_lookup (int *,TYPE_6__*,char const*,int ) ;
 TYPE_9__* ctf_list_next (TYPE_9__*) ;
 TYPE_8__* ctf_list_prev (TYPE_8__*) ;
 TYPE_3__* ctf_lookup_by_id (TYPE_6__**,scalar_t__) ;
 int ctf_member_iter (TYPE_6__*,scalar_t__,int ,TYPE_10__*) ;
 int ctf_ref_inc (TYPE_6__*,scalar_t__) ;
 scalar_t__ ctf_set_errno (TYPE_6__*,int ) ;
 char* ctf_strptr (TYPE_6__*,int ) ;
 scalar_t__ ctf_type_encoding (TYPE_6__*,scalar_t__,TYPE_7__*) ;
 int ctf_type_kind (TYPE_6__*,scalar_t__) ;
 scalar_t__ ctf_type_reference (TYPE_6__*,scalar_t__) ;
 int ctf_type_size (TYPE_6__*,scalar_t__) ;
 int enumadd ;
 int enumcmp ;
 int membadd ;
 int membcmp ;
 scalar_t__ strcmp (int *,char const*) ;
 int strlen (char const*) ;

ctf_id_t
ctf_add_type(ctf_file_t *dst_fp, ctf_file_t *src_fp, ctf_id_t src_type)
{
 ctf_id_t dst_type = CTF_ERR;
 uint_t dst_kind = CTF_K_UNKNOWN;

 const ctf_type_t *tp;
 const char *name;
 uint_t kind, flag, vlen;

 ctf_bundle_t src, dst;
 ctf_encoding_t src_en, dst_en;
 ctf_arinfo_t src_ar, dst_ar;

 ctf_dtdef_t *dtd;
 ctf_funcinfo_t ctc;
 ssize_t size;

 ctf_hash_t *hp;
 ctf_helem_t *hep;

 if (dst_fp == src_fp)
  return (src_type);

 if (!(dst_fp->ctf_flags & LCTF_RDWR))
  return (ctf_set_errno(dst_fp, ECTF_RDONLY));

 if ((tp = ctf_lookup_by_id(&src_fp, src_type)) == ((void*)0))
  return (ctf_set_errno(dst_fp, ctf_errno(src_fp)));

 name = ctf_strptr(src_fp, tp->ctt_name);
 kind = LCTF_INFO_KIND(src_fp, tp->ctt_info);
 flag = LCTF_INFO_ROOT(src_fp, tp->ctt_info);
 vlen = LCTF_INFO_VLEN(src_fp, tp->ctt_info);

 switch (kind) {
 case 131:
  hp = &dst_fp->ctf_structs;
  break;
 case 129:
  hp = &dst_fp->ctf_unions;
  break;
 case 138:
  hp = &dst_fp->ctf_enums;
  break;
 default:
  hp = &dst_fp->ctf_names;
  break;
 }






 if ((flag & CTF_ADD_ROOT) && name[0] != '\0' &&
     (hep = ctf_hash_lookup(hp, dst_fp, name, strlen(name))) != ((void*)0)) {
  dst_type = (ctf_id_t)hep->h_type;
  dst_kind = ctf_type_kind(dst_fp, dst_type);
 }






 if (dst_type != CTF_ERR && dst_kind != kind) {
  if (dst_kind != 136 || (kind != 138 &&
      kind != 131 && kind != 129))
   return (ctf_set_errno(dst_fp, ECTF_CONFLICT));
  else
   dst_type = CTF_ERR;
 }
 if (dst_type == CTF_ERR && name[0] != '\0') {
  for (dtd = ctf_list_prev(&dst_fp->ctf_dtdefs); dtd != ((void*)0) &&
      CTF_TYPE_TO_INDEX(dtd->dtd_type) > dst_fp->ctf_dtoldid;
      dtd = ctf_list_prev(dtd)) {
   if (CTF_INFO_KIND(dtd->dtd_data.ctt_info) != kind ||
       dtd->dtd_name == ((void*)0) ||
       strcmp(dtd->dtd_name, name) != 0)
    continue;
   if (kind == 134 || kind == 137) {
    if (ctf_type_encoding(src_fp, src_type,
        &src_en) != 0)
     continue;
    if (bcmp(&src_en, &dtd->dtd_u.dtu_enc,
        sizeof (ctf_encoding_t)) != 0)
     continue;
   }
   return (dtd->dtd_type);
  }
 }

 src.ctb_file = src_fp;
 src.ctb_type = src_type;
 src.ctb_dtd = ((void*)0);

 dst.ctb_file = dst_fp;
 dst.ctb_type = dst_type;
 dst.ctb_dtd = ((void*)0);







 switch (kind) {
 case 134:
 case 137:
  if (ctf_type_encoding(src_fp, src_type, &src_en) != 0)
   return (ctf_set_errno(dst_fp, ctf_errno(src_fp)));

  if (dst_type != CTF_ERR) {
   if (ctf_type_encoding(dst_fp, dst_type, &dst_en) != 0)
    return (CTF_ERR);

   if (bcmp(&src_en, &dst_en, sizeof (ctf_encoding_t)))
    return (ctf_set_errno(dst_fp, ECTF_CONFLICT));

  } else if (kind == 134) {
   dst_type = ctf_add_integer(dst_fp, flag, name, &src_en);
  } else
   dst_type = ctf_add_float(dst_fp, flag, name, &src_en);
  break;

 case 133:
 case 128:
 case 139:
 case 132:
  src_type = ctf_type_reference(src_fp, src_type);
  src_type = ctf_add_type(dst_fp, src_fp, src_type);

  if (src_type == CTF_ERR)
   return (CTF_ERR);

  dst_type = ctf_add_reftype(dst_fp, flag, src_type, kind);
  break;

 case 140:
  if (ctf_array_info(src_fp, src_type, &src_ar) == CTF_ERR)
   return (ctf_set_errno(dst_fp, ctf_errno(src_fp)));

  src_ar.ctr_contents =
      ctf_add_type(dst_fp, src_fp, src_ar.ctr_contents);
  src_ar.ctr_index =
      ctf_add_type(dst_fp, src_fp, src_ar.ctr_index);
  src_ar.ctr_nelems = src_ar.ctr_nelems;

  if (src_ar.ctr_contents == CTF_ERR ||
      src_ar.ctr_index == CTF_ERR)
   return (CTF_ERR);

  if (dst_type != CTF_ERR) {
   if (ctf_array_info(dst_fp, dst_type, &dst_ar) != 0)
    return (CTF_ERR);

   if (bcmp(&src_ar, &dst_ar, sizeof (ctf_arinfo_t)))
    return (ctf_set_errno(dst_fp, ECTF_CONFLICT));
  } else
   dst_type = ctf_add_array(dst_fp, flag, &src_ar);
  break;

 case 135:
  ctc.ctc_return = ctf_add_type(dst_fp, src_fp, tp->ctt_type);
  ctc.ctc_argc = 0;
  ctc.ctc_flags = 0;

  if (ctc.ctc_return == CTF_ERR)
   return (CTF_ERR);

  dst_type = ctf_add_function(dst_fp, flag, &ctc, ((void*)0));
  break;

 case 131:
 case 129: {
  ctf_dmdef_t *dmd;
  int errs = 0;
  if (dst_type != CTF_ERR && dst_kind != 136) {
   if (ctf_type_size(src_fp, src_type) !=
       ctf_type_size(dst_fp, dst_type))
    return (ctf_set_errno(dst_fp, ECTF_CONFLICT));

   if (ctf_member_iter(src_fp, src_type, membcmp, &dst))
    return (ctf_set_errno(dst_fp, ECTF_CONFLICT));

   break;
  }






  dst_type = ctf_add_generic(dst_fp, flag, name, &dtd);
  if (dst_type == CTF_ERR)
   return (CTF_ERR);

  dst.ctb_type = dst_type;
  dst.ctb_dtd = dtd;

  if (ctf_member_iter(src_fp, src_type, membadd, &dst) != 0)
   errs++;

  if ((size = ctf_type_size(src_fp, src_type)) > CTF_MAX_SIZE) {
   dtd->dtd_data.ctt_size = CTF_LSIZE_SENT;
   dtd->dtd_data.ctt_lsizehi = CTF_SIZE_TO_LSIZE_HI(size);
   dtd->dtd_data.ctt_lsizelo = CTF_SIZE_TO_LSIZE_LO(size);
  } else
   dtd->dtd_data.ctt_size = (ushort_t)size;

  dtd->dtd_data.ctt_info = CTF_TYPE_INFO(kind, flag, vlen);






  for (dmd = ctf_list_next(&dtd->dtd_u.dtu_members);
      dmd != ((void*)0); dmd = ctf_list_next(dmd)) {
   if ((dmd->dmd_type = ctf_add_type(dst_fp, src_fp,
       dmd->dmd_type)) == CTF_ERR)
    errs++;
  }

  if (errs)
   return (CTF_ERR);





  for (dmd = ctf_list_next(&dtd->dtd_u.dtu_members);
      dmd != ((void*)0); dmd = ctf_list_next(dmd))
   ctf_ref_inc(dst_fp, dmd->dmd_type);
  break;
 }

 case 138:
  if (dst_type != CTF_ERR && dst_kind != 136) {
   if (ctf_enum_iter(src_fp, src_type, enumcmp, &dst) ||
       ctf_enum_iter(dst_fp, dst_type, enumcmp, &src))
    return (ctf_set_errno(dst_fp, ECTF_CONFLICT));
  } else {
   dst_type = ctf_add_enum(dst_fp, flag, name);
   if ((dst.ctb_type = dst_type) == CTF_ERR ||
       ctf_enum_iter(src_fp, src_type, enumadd, &dst))
    return (CTF_ERR);
  }
  break;

 case 136:
  if (dst_type == CTF_ERR) {
   dst_type = ctf_add_forward(dst_fp,
       flag, name, 131);
  }
  break;

 case 130:
  src_type = ctf_type_reference(src_fp, src_type);
  src_type = ctf_add_type(dst_fp, src_fp, src_type);

  if (src_type == CTF_ERR)
   return (CTF_ERR);
  if (dst_type == CTF_ERR) {
   dst_type = ctf_add_typedef(dst_fp, flag,
       name, src_type);
  }
  break;

 default:
  return (ctf_set_errno(dst_fp, ECTF_CORRUPT));
 }

 return (dst_type);
}
