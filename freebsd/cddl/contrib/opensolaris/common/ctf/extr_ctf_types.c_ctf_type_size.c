
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_15__ {int ctt_info; } ;
typedef TYPE_2__ ctf_type_t ;
typedef int ctf_id_t ;
struct TYPE_16__ {TYPE_1__* ctf_dmodel; } ;
typedef TYPE_3__ ctf_file_t ;
struct TYPE_17__ {int ctr_contents; int ctr_nelems; } ;
typedef TYPE_4__ ctf_arinfo_t ;
struct TYPE_14__ {int ctd_pointer; int ctd_int; } ;


 int CTF_ERR ;




 int LCTF_INFO_KIND (TYPE_3__*,int ) ;
 int ctf_array_info (TYPE_3__*,int,TYPE_4__*) ;
 int ctf_get_ctt_size (TYPE_3__*,TYPE_2__ const*,int *,int *) ;
 TYPE_2__* ctf_lookup_by_id (TYPE_3__**,int) ;
 int ctf_type_resolve (TYPE_3__*,int) ;

ssize_t
ctf_type_size(ctf_file_t *fp, ctf_id_t type)
{
 const ctf_type_t *tp;
 ssize_t size;
 ctf_arinfo_t ar;

 if ((type = ctf_type_resolve(fp, type)) == CTF_ERR)
  return (-1);

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (-1);

 switch (LCTF_INFO_KIND(fp, tp->ctt_info)) {
 case 128:
  return (fp->ctf_dmodel->ctd_pointer);

 case 129:
  return (0);

 case 130:
  return (fp->ctf_dmodel->ctd_int);

 case 131:







  if ((size = ctf_get_ctt_size(fp, tp, ((void*)0), ((void*)0))) > 0)
   return (size);

  if (ctf_array_info(fp, type, &ar) == CTF_ERR ||
      (size = ctf_type_size(fp, ar.ctr_contents)) == CTF_ERR)
   return (-1);

  return (size * ar.ctr_nelems);

 default:
  return (ctf_get_ctt_size(fp, tp, ((void*)0), ((void*)0)));
 }
}
