
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int header; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv {int biv_p; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int flags; struct loop* loop_father; } ;


 int BB_IRREDUCIBLE_LOOP ;
 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,int ) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 int SSA_NAME_DEF_STMT (scalar_t__) ;
 TYPE_1__* bb_for_stmt (int ) ;
 struct iv* get_iv (struct ivopts_data*,scalar_t__) ;
 int loop_latch_edge (struct loop*) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static void
mark_bivs (struct ivopts_data *data)
{
  tree phi, var;
  struct iv *iv, *incr_iv;
  struct loop *loop = data->current_loop;
  basic_block incr_bb;

  for (phi = phi_nodes (loop->header); phi; phi = PHI_CHAIN (phi))
    {
      iv = get_iv (data, PHI_RESULT (phi));
      if (!iv)
 continue;

      var = PHI_ARG_DEF_FROM_EDGE (phi, loop_latch_edge (loop));
      incr_iv = get_iv (data, var);
      if (!incr_iv)
 continue;


      incr_bb = bb_for_stmt (SSA_NAME_DEF_STMT (var));
      if (incr_bb->loop_father != data->current_loop
   || (incr_bb->flags & BB_IRREDUCIBLE_LOOP))
 continue;

      iv->biv_p = 1;
      incr_iv->biv_p = 1;
    }
}
