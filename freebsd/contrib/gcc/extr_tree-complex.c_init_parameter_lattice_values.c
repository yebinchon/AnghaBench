
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int decl; } ;


 scalar_t__ DECL_ARGUMENTS (int ) ;
 int SSA_NAME_VERSION (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int VARYING ;
 int VEC_replace (int ,int ,int ,int ) ;
 TYPE_1__* cfun ;
 int complex_lattice_t ;
 int complex_lattice_values ;
 scalar_t__ default_def (scalar_t__) ;
 scalar_t__ is_complex_reg (scalar_t__) ;
 int * var_ann (scalar_t__) ;

__attribute__((used)) static void
init_parameter_lattice_values (void)
{
  tree parm;

  for (parm = DECL_ARGUMENTS (cfun->decl); parm ; parm = TREE_CHAIN (parm))
    if (is_complex_reg (parm) && var_ann (parm) != ((void*)0))
      {
 tree ssa_name = default_def (parm);
 VEC_replace (complex_lattice_t, complex_lattice_values,
       SSA_NAME_VERSION (ssa_name), VARYING);
      }
}
