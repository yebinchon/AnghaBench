
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_2__* histogram_value ;
typedef int block_stmt_iterator ;
struct TYPE_5__ {int stmt; } ;
struct TYPE_6__ {TYPE_1__ hvalue; } ;


 int BSI_SAME_STMT ;
 int NULL_TREE ;
 int bsi_for_stmt (int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int build_addr (int ,int ) ;
 int build_function_call_expr (int ,int ) ;
 int current_function_decl ;
 int force_gimple_operand_bsi (int *,int ,int,int ) ;
 int prepare_instrumented_value (int *,TYPE_2__*) ;
 int tree_cons (int ,int ,int ) ;
 int tree_coverage_counter_ref (unsigned int,unsigned int) ;
 int tree_one_value_profiler_fn ;

__attribute__((used)) static void
tree_gen_one_value_profiler (histogram_value value, unsigned tag, unsigned base)
{
  tree stmt = value->hvalue.stmt;
  block_stmt_iterator bsi = bsi_for_stmt (stmt);
  tree ref = tree_coverage_counter_ref (tag, base), ref_ptr;
  tree args, call, val;

  ref_ptr = force_gimple_operand_bsi (&bsi,
          build_addr (ref, current_function_decl),
          1, NULL_TREE);
  val = prepare_instrumented_value (&bsi, value);
  args = tree_cons (NULL_TREE, ref_ptr,
      tree_cons (NULL_TREE, val,
          NULL_TREE));
  call = build_function_call_expr (tree_one_value_profiler_fn, args);
  bsi_insert_before (&bsi, call, BSI_SAME_STMT);
}
