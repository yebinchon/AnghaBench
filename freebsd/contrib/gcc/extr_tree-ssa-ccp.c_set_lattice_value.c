
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {scalar_t__ lattice_val; scalar_t__ value; scalar_t__ mem_ref; } ;
typedef TYPE_1__ prop_value_t ;


 scalar_t__ CONSTANT ;
 int TDF_DETAILS ;
 scalar_t__ UNDEFINED ;
 scalar_t__ UNKNOWN_VAL ;
 scalar_t__ do_store_ccp ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_lattice_value (scalar_t__,char*,TYPE_1__) ;
 int fprintf (scalar_t__,char*,char*) ;
 int gcc_assert (int) ;
 TYPE_1__* get_value (int ,int) ;

__attribute__((used)) static bool
set_lattice_value (tree var, prop_value_t new_val)
{
  prop_value_t *old_val = get_value (var, 0);
  gcc_assert (old_val->lattice_val <= new_val.lattice_val
              || (old_val->lattice_val == new_val.lattice_val
    && old_val->value == new_val.value
    && old_val->mem_ref == new_val.mem_ref)
       || (do_store_ccp
    && old_val->lattice_val == CONSTANT
    && new_val.lattice_val == UNKNOWN_VAL));

  if (old_val->lattice_val != new_val.lattice_val)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   dump_lattice_value (dump_file, "Lattice value changed to ", new_val);
   fprintf (dump_file, ".  %sdding SSA edges to worklist.\n",
            new_val.lattice_val != UNDEFINED ? "A" : "Not a");
 }

      *old_val = new_val;




      return (new_val.lattice_val != UNDEFINED);
    }

  return 0;
}
