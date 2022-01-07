
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct probe_finder {TYPE_2__* pvar; int cu_die; int addr; TYPE_1__* tvar; } ;
struct TYPE_4__ {char* var; char* type; char* name; } ;
struct TYPE_3__ {int * name; int * type; int * value; } ;
typedef int Dwarf_Die ;


 int ENOENT ;
 int ENOMEM ;
 int convert_variable (int *,struct probe_finder*) ;
 int die_find_variable_at (int *,char*,int ,int *) ;
 int is_c_varname (char*) ;
 int pr_debug (char*,char*) ;
 int pr_warning (char*,char*) ;
 char* strchr (char*,char) ;
 void* strdup (char*) ;
 int synthesize_perf_probe_arg (TYPE_2__*,char*,int) ;

__attribute__((used)) static int find_variable(Dwarf_Die *sc_die, struct probe_finder *pf)
{
 Dwarf_Die vr_die;
 char buf[32], *ptr;
 int ret = 0;

 if (!is_c_varname(pf->pvar->var)) {

  pf->tvar->value = strdup(pf->pvar->var);
  if (pf->tvar->value == ((void*)0))
   return -ENOMEM;
  if (pf->pvar->type) {
   pf->tvar->type = strdup(pf->pvar->type);
   if (pf->tvar->type == ((void*)0))
    return -ENOMEM;
  }
  if (pf->pvar->name) {
   pf->tvar->name = strdup(pf->pvar->name);
   if (pf->tvar->name == ((void*)0))
    return -ENOMEM;
  } else
   pf->tvar->name = ((void*)0);
  return 0;
 }

 if (pf->pvar->name)
  pf->tvar->name = strdup(pf->pvar->name);
 else {
  ret = synthesize_perf_probe_arg(pf->pvar, buf, 32);
  if (ret < 0)
   return ret;
  ptr = strchr(buf, ':');
  if (ptr)
   *ptr = '_';
  pf->tvar->name = strdup(buf);
 }
 if (pf->tvar->name == ((void*)0))
  return -ENOMEM;

 pr_debug("Searching '%s' variable in context.\n", pf->pvar->var);

 if (!die_find_variable_at(sc_die, pf->pvar->var, pf->addr, &vr_die)) {

  if (!die_find_variable_at(&pf->cu_die, pf->pvar->var, 0, &vr_die))
   ret = -ENOENT;
 }
 if (ret >= 0)
  ret = convert_variable(&vr_die, pf);

 if (ret < 0)
  pr_warning("Failed to find '%s' in this function.\n",
      pf->pvar->var);
 return ret;
}
