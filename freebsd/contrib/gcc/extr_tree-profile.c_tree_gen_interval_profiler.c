
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_4__* histogram_value ;
typedef int block_stmt_iterator ;
struct TYPE_8__ {int steps; int int_start; } ;
struct TYPE_9__ {TYPE_2__ intvl; } ;
struct TYPE_7__ {int stmt; } ;
struct TYPE_10__ {TYPE_3__ hdata; TYPE_1__ hvalue; } ;


 int BSI_SAME_STMT ;
 int NULL_TREE ;
 int bsi_for_stmt (int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int build_addr (int ,int ) ;
 int build_function_call_expr (int ,int ) ;
 int build_int_cst_type (int ,int ) ;
 int current_function_decl ;
 int force_gimple_operand_bsi (int *,int ,int,int ) ;
 int integer_type_node ;
 int prepare_instrumented_value (int *,TYPE_4__*) ;
 int tree_cons (int ,int ,int ) ;
 int tree_coverage_counter_ref (unsigned int,unsigned int) ;
 int tree_interval_profiler_fn ;
 int unsigned_type_node ;

__attribute__((used)) static void
tree_gen_interval_profiler (histogram_value value, unsigned tag, unsigned base)
{
  tree stmt = value->hvalue.stmt;
  block_stmt_iterator bsi = bsi_for_stmt (stmt);
  tree ref = tree_coverage_counter_ref (tag, base), ref_ptr;
  tree args, call, val;
  tree start = build_int_cst_type (integer_type_node, value->hdata.intvl.int_start);
  tree steps = build_int_cst_type (unsigned_type_node, value->hdata.intvl.steps);

  ref_ptr = force_gimple_operand_bsi (&bsi,
          build_addr (ref, current_function_decl),
          1, NULL_TREE);
  val = prepare_instrumented_value (&bsi, value);
  args = tree_cons (NULL_TREE, ref_ptr,
      tree_cons (NULL_TREE, val,
          tree_cons (NULL_TREE, start,
       tree_cons (NULL_TREE, steps,
           NULL_TREE))));
  call = build_function_call_expr (tree_interval_profiler_fn, args);
  bsi_insert_before (&bsi, call, BSI_SAME_STMT);
}
