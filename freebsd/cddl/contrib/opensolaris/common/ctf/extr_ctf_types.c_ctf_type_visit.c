
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_visit_f ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 int ctf_type_rvisit (int *,int ,int *,void*,char*,int ,int ) ;

int
ctf_type_visit(ctf_file_t *fp, ctf_id_t type, ctf_visit_f *func, void *arg)
{
 return (ctf_type_rvisit(fp, type, func, arg, "", 0, 0));
}
