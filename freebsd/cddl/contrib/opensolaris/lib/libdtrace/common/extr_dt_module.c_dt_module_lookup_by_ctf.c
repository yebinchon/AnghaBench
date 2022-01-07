
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;
typedef int dt_module_t ;
typedef int ctf_file_t ;


 int * ctf_getspecific (int *) ;

dt_module_t *
dt_module_lookup_by_ctf(dtrace_hdl_t *dtp, ctf_file_t *ctfp)
{
 return (ctfp ? ctf_getspecific(ctfp) : ((void*)0));
}
