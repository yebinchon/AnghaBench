
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lattice_val; void* mem_ref; void* value; } ;
typedef TYPE_1__ prop_value_t ;


 scalar_t__ CONSTANT ;
 void* NULL_TREE ;
 scalar_t__ UNDEFINED ;
 scalar_t__ UNKNOWN_VAL ;
 scalar_t__ VARYING ;
 int do_store_ccp ;
 int gcc_assert (int ) ;
 scalar_t__ operand_equal_p (void*,void*,int ) ;
 int simple_cst_equal (void*,void*) ;

__attribute__((used)) static void
ccp_lattice_meet (prop_value_t *val1, prop_value_t *val2)
{
  if (val1->lattice_val == UNDEFINED)
    {

      *val1 = *val2;
    }
  else if (val2->lattice_val == UNDEFINED)
    {


      ;
    }
  else if (val1->lattice_val == UNKNOWN_VAL
           || val2->lattice_val == UNKNOWN_VAL)
    {

      gcc_assert (do_store_ccp);


      val1->lattice_val = UNKNOWN_VAL;
      val1->value = NULL_TREE;
      val1->mem_ref = NULL_TREE;
    }
  else if (val1->lattice_val == VARYING
           || val2->lattice_val == VARYING)
    {

      val1->lattice_val = VARYING;
      val1->value = NULL_TREE;
      val1->mem_ref = NULL_TREE;
    }
  else if (val1->lattice_val == CONSTANT
    && val2->lattice_val == CONSTANT
    && simple_cst_equal (val1->value, val2->value) == 1
    && (!do_store_ccp
        || (val1->mem_ref && val2->mem_ref
     && operand_equal_p (val1->mem_ref, val2->mem_ref, 0))))
    {





      val1->lattice_val = CONSTANT;
      val1->value = val1->value;
      val1->mem_ref = val1->mem_ref;
    }
  else
    {

      val1->lattice_val = VARYING;
      val1->value = NULL_TREE;
      val1->mem_ref = NULL_TREE;
    }
}
