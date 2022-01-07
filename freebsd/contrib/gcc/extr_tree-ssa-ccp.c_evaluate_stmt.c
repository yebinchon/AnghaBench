
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_3__ {void* value; scalar_t__ lattice_val; void* mem_ref; } ;
typedef TYPE_1__ prop_value_t ;
typedef scalar_t__ ccp_lattice_t ;


 scalar_t__ CONSTANT ;
 void* NULL_TREE ;
 scalar_t__ UNDEFINED ;
 scalar_t__ UNKNOWN_VAL ;
 scalar_t__ VARYING ;
 void* ccp_fold (void*) ;
 void* fold_const_aggregate_ref (void*) ;
 int fold_defer_overflow_warnings () ;
 int fold_undefer_overflow_warnings (int,void*,int ) ;
 void* get_rhs (void*) ;
 scalar_t__ is_gimple_min_invariant (void*) ;
 scalar_t__ likely_value (void*) ;

__attribute__((used)) static prop_value_t
evaluate_stmt (tree stmt)
{
  prop_value_t val;
  tree simplified = NULL_TREE;
  ccp_lattice_t likelyvalue = likely_value (stmt);
  bool is_constant;

  val.mem_ref = NULL_TREE;

  fold_defer_overflow_warnings ();



  if (likelyvalue == CONSTANT)
    simplified = ccp_fold (stmt);


  if (likelyvalue == VARYING)
    simplified = get_rhs (stmt);





  else if (!simplified)
    simplified = fold_const_aggregate_ref (get_rhs (stmt));

  is_constant = simplified && is_gimple_min_invariant (simplified);

  fold_undefer_overflow_warnings (is_constant, stmt, 0);

  if (is_constant)
    {

      val.lattice_val = CONSTANT;
      val.value = simplified;
    }
  else
    {



      if (likelyvalue == UNDEFINED || likelyvalue == UNKNOWN_VAL)
 val.lattice_val = likelyvalue;
      else
 val.lattice_val = VARYING;

      val.value = NULL_TREE;
    }

  return val;
}
