
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ value; scalar_t__ mem_ref; } ;
typedef TYPE_1__ prop_value_t ;


 scalar_t__ NULL_TREE ;
 int SSA_NAME_DEF_STMT (scalar_t__) ;
 size_t SSA_NAME_VERSION (scalar_t__) ;
 TYPE_1__* copy_of ;
 int stmt_may_generate_copy (int ) ;

__attribute__((used)) static inline prop_value_t *
get_copy_of_val (tree var)
{
  prop_value_t *val = &copy_of[SSA_NAME_VERSION (var)];

  if (val->value == NULL_TREE
      && !stmt_may_generate_copy (SSA_NAME_DEF_STMT (var)))
    {


      val->value = var;
      val->mem_ref = NULL_TREE;
    }

  return val;
}
