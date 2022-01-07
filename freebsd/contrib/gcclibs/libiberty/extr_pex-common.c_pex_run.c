
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;


 char const* pex_run_in_environment (struct pex_obj*,int,char const*,char* const*,int *,char const*,char const*,int*) ;

const char *
pex_run (struct pex_obj *obj, int flags, const char *executable,
         char * const * argv, const char *orig_outname, const char *errname,
         int *err)
{
  return pex_run_in_environment (obj, flags, executable, argv, ((void*)0),
     orig_outname, errname, err);
}
