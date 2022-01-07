
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int dummy; } ;


 int PEX_USE_PIPES ;
 int funcs ;
 struct pex_obj* pex_init_common (int,char const*,char const*,int *) ;

struct pex_obj *
pex_init (int flags, const char *pname, const char *tempbase)
{

  flags &= ~ PEX_USE_PIPES;
  return pex_init_common (flags, pname, tempbase, &funcs);
}
