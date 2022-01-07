
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct alias_info {size_t num_addressable_vars; size_t num_pointers; int ref_all_symbol_mem_tag; TYPE_2__** pointers; TYPE_1__** addressable_vars; } ;
struct TYPE_6__ {scalar_t__ symbol_mem_tag; } ;
struct TYPE_5__ {scalar_t__ var; } ;
struct TYPE_4__ {scalar_t__ var; } ;


 scalar_t__ PTR_IS_REF_ALL (scalar_t__) ;
 int add_may_alias (int ,scalar_t__) ;
 scalar_t__ global_var ;
 scalar_t__ is_call_clobbered (scalar_t__) ;
 TYPE_3__* var_ann (scalar_t__) ;

__attribute__((used)) static void
finalize_ref_all_pointers (struct alias_info *ai)
{
  size_t i;

  if (global_var)
    add_may_alias (ai->ref_all_symbol_mem_tag, global_var);
  else
    {

      for (i = 0; i < ai->num_addressable_vars; i++)
 {
   tree var = ai->addressable_vars[i]->var;
   if (is_call_clobbered (var))
     add_may_alias (ai->ref_all_symbol_mem_tag, var);
        }



      for (i = 0; i < ai->num_pointers; i++)
 {
   tree ptr = ai->pointers[i]->var, tag;
   if (PTR_IS_REF_ALL (ptr))
     continue;
   tag = var_ann (ptr)->symbol_mem_tag;
   if (is_call_clobbered (tag))
     add_may_alias (ai->ref_all_symbol_mem_tag, tag);
 }
    }
}
