
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctt_type; int ctt_info; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 int CTF_ERR ;




 int ECTF_CORRUPT ;
 int LCTF_INFO_KIND (int *,int ) ;
 int ctf_dprintf (char*,int ) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_set_errno (int *,int ) ;

ctf_id_t
ctf_type_resolve(ctf_file_t *fp, ctf_id_t type)
{
 ctf_id_t prev = type, otype = type;
 ctf_file_t *ofp = fp;
 const ctf_type_t *tp;

 while ((tp = ctf_lookup_by_id(&fp, type)) != ((void*)0)) {
  switch (LCTF_INFO_KIND(fp, tp->ctt_info)) {
  case 129:
  case 128:
  case 131:
  case 130:
   if (tp->ctt_type == type || tp->ctt_type == otype ||
       tp->ctt_type == prev) {
    ctf_dprintf("type %ld cycle detected\n", otype);
    return (ctf_set_errno(ofp, ECTF_CORRUPT));
   }
   prev = type;
   type = tp->ctt_type;
   break;
  default:
   return (type);
  }
 }

 return (CTF_ERR);
}
