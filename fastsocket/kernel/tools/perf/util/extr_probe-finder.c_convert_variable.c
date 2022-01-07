
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct probe_finder {TYPE_1__* pvar; TYPE_2__* tvar; int fb_ops; int addr; } ;
struct TYPE_5__ {int ref; } ;
struct TYPE_4__ {int type; scalar_t__ field; int var; } ;
typedef int Dwarf_Die ;


 int ENOENT ;
 int ENOTSUP ;
 int convert_variable_fields (int *,int ,scalar_t__,int *,int *) ;
 int convert_variable_location (int *,int ,int ,TYPE_2__*) ;
 int convert_variable_type (int *,TYPE_2__*,int ) ;
 int dwarf_diename (int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int convert_variable(Dwarf_Die *vr_die, struct probe_finder *pf)
{
 Dwarf_Die die_mem;
 int ret;

 pr_debug("Converting variable %s into trace event.\n",
   dwarf_diename(vr_die));

 ret = convert_variable_location(vr_die, pf->addr, pf->fb_ops,
     pf->tvar);
 if (ret == -ENOENT)
  pr_err("Failed to find the location of %s at this address.\n"
         " Perhaps, it has been optimized out.\n", pf->pvar->var);
 else if (ret == -ENOTSUP)
  pr_err("Sorry, we don't support this variable location yet.\n");
 else if (pf->pvar->field) {
  ret = convert_variable_fields(vr_die, pf->pvar->var,
           pf->pvar->field, &pf->tvar->ref,
           &die_mem);
  vr_die = &die_mem;
 }
 if (ret == 0)
  ret = convert_variable_type(vr_die, pf->tvar, pf->pvar->type);

 return ret;
}
