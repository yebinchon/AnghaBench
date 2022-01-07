
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;


 int pex_free (struct pex_obj*) ;
 int pex_get_status (struct pex_obj*,int,int*) ;
 struct pex_obj* pex_init (int ,char const*,int *) ;
 char* pex_run (struct pex_obj*,int,char const*,char* const*,char const*,char const*,int*) ;

const char *
pex_one (int flags, const char *executable, char * const *argv,
  const char *pname, const char *outname, const char *errname,
  int *status, int *err)
{
  struct pex_obj *obj;
  const char *errmsg;

  obj = pex_init (0, pname, ((void*)0));
  errmsg = pex_run (obj, flags, executable, argv, outname, errname, err);
  if (errmsg == ((void*)0))
    {
      if (!pex_get_status (obj, 1, status))
 {
   *err = 0;
   errmsg = "pex_get_status failed";
 }
    }
  pex_free (obj);
  return errmsg;
}
