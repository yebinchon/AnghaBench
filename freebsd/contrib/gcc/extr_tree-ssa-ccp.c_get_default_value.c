
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {void* lattice_val; int mem_ref; scalar_t__ value; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ prop_value_t ;


 void* CONSTANT ;
 scalar_t__ DECL_INITIAL (int ) ;
 scalar_t__ IS_EMPTY_STMT (int ) ;
 scalar_t__ MODIFY_EXPR ;
 int MTAG_P (int ) ;
 int NULL_TREE ;
 scalar_t__ PARM_DECL ;
 scalar_t__ PHI_NODE ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ SSA_NAME_VALUE (int ) ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 void* UNDEFINED ;
 int UNINITIALIZED ;
 void* UNKNOWN_VAL ;
 void* VARYING ;
 scalar_t__ ccp_decl_initial_min_invariant (scalar_t__) ;
 scalar_t__ do_store_ccp ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ is_gimple_reg (int ) ;

__attribute__((used)) static prop_value_t
get_default_value (tree var)
{
  tree sym = SSA_NAME_VAR (var);
  prop_value_t val = { UNINITIALIZED, NULL_TREE, NULL_TREE };

  if (!do_store_ccp && !is_gimple_reg (var))
    {


      val.lattice_val = VARYING;
    }
  else if (SSA_NAME_VALUE (var)
    && is_gimple_min_invariant (SSA_NAME_VALUE (var)))
    {
      val.lattice_val = CONSTANT;
      val.value = SSA_NAME_VALUE (var);
    }
  else if (TREE_STATIC (sym)
    && TREE_READONLY (sym)
    && !MTAG_P (sym)
    && DECL_INITIAL (sym)
    && ccp_decl_initial_min_invariant (DECL_INITIAL (sym)))
    {


      val.lattice_val = CONSTANT;
      val.value = DECL_INITIAL (sym);
      val.mem_ref = sym;
    }
  else
    {
      tree stmt = SSA_NAME_DEF_STMT (var);

      if (IS_EMPTY_STMT (stmt))
 {







   if (is_gimple_reg (sym) && TREE_CODE (sym) != PARM_DECL)
     val.lattice_val = UNDEFINED;
   else if (do_store_ccp)
     val.lattice_val = UNKNOWN_VAL;
   else
     val.lattice_val = VARYING;
 }
      else if (TREE_CODE (stmt) == MODIFY_EXPR
        || TREE_CODE (stmt) == PHI_NODE)
 {



   val.lattice_val = is_gimple_reg (sym) ? UNDEFINED : UNKNOWN_VAL;
 }
      else
 {

   val.lattice_val = VARYING;
 }
    }

  return val;
}
