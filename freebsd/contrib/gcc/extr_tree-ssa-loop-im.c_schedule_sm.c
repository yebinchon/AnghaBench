
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct mem_ref_loc {int stmt; struct mem_ref_loc* next; } ;
struct loop {int num; } ;
struct lim_aux_data {int dummy; } ;
struct fmt_data {struct loop* orig_loop; struct loop* loop; } ;
typedef int edge ;
struct TYPE_6__ {int sm_done; struct loop* tgt_loop; struct loop* max_loop; } ;
struct TYPE_4__ {int aux; } ;
struct TYPE_5__ {TYPE_1__ common; } ;


 TYPE_3__* LIM_DATA (int ) ;
 int MODIFY_EXPR ;
 int TDF_DETAILS ;
 int TREE_TYPE (int ) ;
 int bsi_insert_on_edge (int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int for_each_index (int *,int ,struct fmt_data*) ;
 int force_move_till ;
 int fprintf (scalar_t__,char*,...) ;
 int get_lsm_tmp_name (int ) ;
 TYPE_2__* get_stmt_ann (int ) ;
 int loop_latch_edge (struct loop*) ;
 int make_rename_temp (int ,int ) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 int rewrite_mem_refs (int ,struct mem_ref_loc*) ;
 int unshare_expr (int ) ;
 int void_type_node ;
 int xcalloc (int,int) ;

__attribute__((used)) static void
schedule_sm (struct loop *loop, edge *exits, unsigned n_exits, tree ref,
      struct mem_ref_loc *mem_refs)
{
  struct mem_ref_loc *aref;
  tree tmp_var;
  unsigned i;
  tree load, store;
  struct fmt_data fmt_data;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Executing store motion of ");
      print_generic_expr (dump_file, ref, 0);
      fprintf (dump_file, " from loop %d\n", loop->num);
    }

  tmp_var = make_rename_temp (TREE_TYPE (ref),
         get_lsm_tmp_name (ref));

  fmt_data.loop = loop;
  fmt_data.orig_loop = loop;
  for_each_index (&ref, force_move_till, &fmt_data);

  rewrite_mem_refs (tmp_var, mem_refs);
  for (aref = mem_refs; aref; aref = aref->next)
    if (LIM_DATA (aref->stmt))
      LIM_DATA (aref->stmt)->sm_done = 1;


  load = build2 (MODIFY_EXPR, void_type_node, tmp_var, ref);
  get_stmt_ann (load)->common.aux = xcalloc (1, sizeof (struct lim_aux_data));
  LIM_DATA (load)->max_loop = loop;
  LIM_DATA (load)->tgt_loop = loop;



  bsi_insert_on_edge (loop_latch_edge (loop), load);

  for (i = 0; i < n_exits; i++)
    {
      store = build2 (MODIFY_EXPR, void_type_node,
        unshare_expr (ref), tmp_var);
      bsi_insert_on_edge (exits[i], store);
    }
}
