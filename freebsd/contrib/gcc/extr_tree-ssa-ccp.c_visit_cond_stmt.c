
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ prop_value_t ;
typedef enum ssa_prop_result { ____Placeholder_ssa_prop_result } ssa_prop_result ;
typedef int edge ;
typedef int basic_block ;


 int SSA_PROP_INTERESTING ;
 int SSA_PROP_VARYING ;
 int bb_for_stmt (int ) ;
 TYPE_1__ evaluate_stmt (int ) ;
 int find_taken_edge (int ,scalar_t__) ;

__attribute__((used)) static enum ssa_prop_result
visit_cond_stmt (tree stmt, edge *taken_edge_p)
{
  prop_value_t val;
  basic_block block;

  block = bb_for_stmt (stmt);
  val = evaluate_stmt (stmt);





  *taken_edge_p = val.value ? find_taken_edge (block, val.value) : 0;
  if (*taken_edge_p)
    return SSA_PROP_INTERESTING;
  else
    return SSA_PROP_VARYING;
}
