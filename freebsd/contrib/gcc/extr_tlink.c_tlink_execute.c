
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;


 struct pex_obj* collect_execute (char const*,char**,char const*,char const*) ;
 int collect_wait (char const*,struct pex_obj*) ;

__attribute__((used)) static int
tlink_execute (const char *prog, char **argv, const char *outname,
        const char *errname)
{
  struct pex_obj *pex;

  pex = collect_execute (prog, argv, outname, errname);
  return collect_wait (prog, pex);
}
