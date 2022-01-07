
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;


 struct pex_obj* collect_execute (char const*,char**,int *,int *) ;
 int do_wait (char const*,struct pex_obj*) ;

__attribute__((used)) static void
fork_execute (const char *prog, char **argv)
{
  struct pex_obj *pex;

  pex = collect_execute (prog, argv, ((void*)0), ((void*)0));
  do_wait (prog, pex);
}
