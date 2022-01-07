
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint_t ;
typedef int uchar_t ;
typedef int ssize_t ;
struct TYPE_18__ {int ctt_info; } ;
typedef TYPE_2__ ctf_type_t ;
struct TYPE_19__ {int ctm_type; } ;
typedef TYPE_3__ ctf_member_t ;
struct TYPE_20__ {int ctlm_type; } ;
typedef TYPE_4__ ctf_lmember_t ;
typedef int ctf_id_t ;
struct TYPE_21__ {TYPE_1__* ctf_dmodel; int ctf_version; } ;
typedef TYPE_5__ ctf_file_t ;
struct TYPE_22__ {int ctr_contents; } ;
typedef TYPE_6__ ctf_arinfo_t ;
struct TYPE_17__ {int ctd_pointer; int ctd_int; } ;


 int CTF_ERR ;






 int CTF_LSTRUCT_THRESH ;
 int CTF_VERSION_1 ;
 int const LCTF_INFO_KIND (TYPE_5__*,int ) ;
 int LCTF_INFO_VLEN (TYPE_5__*,int ) ;
 size_t MAX (size_t,int) ;
 int MIN (int ,int) ;
 int ctf_array_info (TYPE_5__*,int ,TYPE_6__*) ;
 int ctf_get_ctt_size (TYPE_5__*,TYPE_2__ const*,int*,int*) ;
 TYPE_2__* ctf_lookup_by_id (TYPE_5__**,int ) ;
 int ctf_type_resolve (TYPE_5__*,int ) ;

ssize_t
ctf_type_align(ctf_file_t *fp, ctf_id_t type)
{
 const ctf_type_t *tp;
 ctf_arinfo_t r;

 if ((type = ctf_type_resolve(fp, type)) == CTF_ERR)
  return (-1);

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (-1);

 switch (LCTF_INFO_KIND(fp, tp->ctt_info)) {
 case 130:
 case 131:
  return (fp->ctf_dmodel->ctd_pointer);

 case 133:
  if (ctf_array_info(fp, type, &r) == CTF_ERR)
   return (-1);
  return (ctf_type_align(fp, r.ctr_contents));

 case 129:
 case 128: {
  uint_t n = LCTF_INFO_VLEN(fp, tp->ctt_info);
  ssize_t size, increment;
  size_t align = 0;
  const void *vmp;

  (void) ctf_get_ctt_size(fp, tp, &size, &increment);
  vmp = (uchar_t *)tp + increment;

  if (LCTF_INFO_KIND(fp, tp->ctt_info) == 129)
   n = MIN(n, 1);

  if (fp->ctf_version == CTF_VERSION_1 ||
      size < CTF_LSTRUCT_THRESH) {
   const ctf_member_t *mp = vmp;
   for (; n != 0; n--, mp++) {
    ssize_t am = ctf_type_align(fp, mp->ctm_type);
    align = MAX(align, am);
   }
  } else {
   const ctf_lmember_t *lmp = vmp;
   for (; n != 0; n--, lmp++) {
    ssize_t am = ctf_type_align(fp, lmp->ctlm_type);
    align = MAX(align, am);
   }
  }

  return (align);
 }

 case 132:
  return (fp->ctf_dmodel->ctd_int);

 default:
  return (ctf_get_ctt_size(fp, tp, ((void*)0), ((void*)0)));
 }
}
