
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct loop {int num; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv_ca {int dummy; } ;
typedef TYPE_2__* edge ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {TYPE_4__* src; TYPE_1__* dest; } ;
struct TYPE_5__ {int index; } ;


 scalar_t__ MAX_CONSIDERED_USES ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 int create_new_ivs (struct ivopts_data*,struct iv_ca*) ;
 int determine_iv_costs (struct ivopts_data*) ;
 int determine_set_costs (struct ivopts_data*) ;
 int determine_use_iv_costs (struct ivopts_data*) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int find_induction_variables (struct ivopts_data*) ;
 int find_interesting_uses (struct ivopts_data*) ;
 int find_iv_candidates (struct ivopts_data*) ;
 struct iv_ca* find_optimal_iv_set (struct ivopts_data*) ;
 int fprintf (scalar_t__,char*,...) ;
 int free_loop_data (struct ivopts_data*) ;
 int iv_ca_free (struct iv_ca**) ;
 int last_stmt (TYPE_4__*) ;
 scalar_t__ n_iv_uses (struct ivopts_data*) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 int remove_unused_ivs (struct ivopts_data*) ;
 int rewrite_uses (struct ivopts_data*) ;
 int scev_reset () ;
 TYPE_2__* single_dom_exit (struct loop*) ;

__attribute__((used)) static bool
tree_ssa_iv_optimize_loop (struct ivopts_data *data, struct loop *loop)
{
  bool changed = 0;
  struct iv_ca *iv_ca;
  edge exit;

  data->current_loop = loop;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Processing loop %d\n", loop->num);

      exit = single_dom_exit (loop);
      if (exit)
 {
   fprintf (dump_file, "  single exit %d -> %d, exit condition ",
     exit->src->index, exit->dest->index);
   print_generic_expr (dump_file, last_stmt (exit->src), TDF_SLIM);
   fprintf (dump_file, "\n");
 }

      fprintf (dump_file, "\n");
    }



  if (!find_induction_variables (data))
    goto finish;


  find_interesting_uses (data);
  if (n_iv_uses (data) > MAX_CONSIDERED_USES)
    goto finish;


  find_iv_candidates (data);


  determine_use_iv_costs (data);
  determine_iv_costs (data);
  determine_set_costs (data);


  iv_ca = find_optimal_iv_set (data);
  if (!iv_ca)
    goto finish;
  changed = 1;


  create_new_ivs (data, iv_ca);
  iv_ca_free (&iv_ca);


  rewrite_uses (data);


  remove_unused_ivs (data);




  scev_reset ();

finish:
  free_loop_data (data);

  return changed;
}
