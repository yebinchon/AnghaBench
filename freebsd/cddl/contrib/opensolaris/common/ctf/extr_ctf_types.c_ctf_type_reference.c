
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





 int ECTF_NOTREF ;
 int LCTF_INFO_KIND (int *,int ) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_set_errno (int *,int ) ;

ctf_id_t
ctf_type_reference(ctf_file_t *fp, ctf_id_t type)
{
 ctf_file_t *ofp = fp;
 const ctf_type_t *tp;

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (CTF_ERR);

 switch (LCTF_INFO_KIND(fp, tp->ctt_info)) {
 case 131:
 case 129:
 case 128:
 case 132:
 case 130:
  return (tp->ctt_type);
 default:
  return (ctf_set_errno(ofp, ECTF_NOTREF));
 }
}
