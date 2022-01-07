
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct mem_ref {unsigned int prefetch_mod; scalar_t__ write_p; TYPE_1__* group; int mem; int stmt; } ;
typedef int block_stmt_iterator ;
struct TYPE_2__ {unsigned int step; } ;
typedef unsigned int HOST_WIDE_INT ;


 int BSI_SAME_STMT ;
 size_t BUILT_IN_PREFETCH ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int TDF_DETAILS ;
 int bsi_for_stmt (int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int build_fold_addr_expr_with_type (int ,int ) ;
 int build_function_call_expr (int ,int ) ;
 int build_int_cst (int ,unsigned int) ;
 int * built_in_decls ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fold_build2 (int ,int ,int ,int ) ;
 int force_gimple_operand_bsi (int *,int ,int,int *) ;
 int fprintf (scalar_t__,char*,void*) ;
 int integer_one_node ;
 int integer_zero_node ;
 int ptr_type_node ;
 int tree_cons (int ,int ,int ) ;
 int unshare_expr (int ) ;

__attribute__((used)) static void
issue_prefetch_ref (struct mem_ref *ref, unsigned unroll_factor, unsigned ahead)
{
  HOST_WIDE_INT delta;
  tree addr, addr_base, prefetch, params, write_p;
  block_stmt_iterator bsi;
  unsigned n_prefetches, ap;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "Issued prefetch for %p.\n", (void *) ref);

  bsi = bsi_for_stmt (ref->stmt);

  n_prefetches = ((unroll_factor + ref->prefetch_mod - 1)
    / ref->prefetch_mod);
  addr_base = build_fold_addr_expr_with_type (ref->mem, ptr_type_node);
  addr_base = force_gimple_operand_bsi (&bsi, unshare_expr (addr_base), 1, ((void*)0));

  for (ap = 0; ap < n_prefetches; ap++)
    {

      delta = (ahead + ap * ref->prefetch_mod) * ref->group->step;
      addr = fold_build2 (PLUS_EXPR, ptr_type_node,
     addr_base, build_int_cst (ptr_type_node, delta));
      addr = force_gimple_operand_bsi (&bsi, unshare_expr (addr), 1, ((void*)0));


      write_p = ref->write_p ? integer_one_node : integer_zero_node;
      params = tree_cons (NULL_TREE, addr,
     tree_cons (NULL_TREE, write_p, NULL_TREE));

      prefetch = build_function_call_expr (built_in_decls[BUILT_IN_PREFETCH],
        params);
      bsi_insert_before (&bsi, prefetch, BSI_SAME_STMT);
    }
}
