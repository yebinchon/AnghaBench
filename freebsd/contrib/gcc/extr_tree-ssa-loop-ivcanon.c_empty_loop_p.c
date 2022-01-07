
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct tree_niter_desc {int dummy; } ;
struct loop {unsigned int num_nodes; } ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_12__ {scalar_t__ has_volatile_ops; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int dest; } ;



 int ASM_VOLATILE_P (scalar_t__) ;
 int BB_IRREDUCIBLE_LOOP ;


 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;

 int SSA_OP_VIRTUAL_DEFS ;
 int TREE_CODE (scalar_t__) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 int ZERO_SSA_OPERANDS (scalar_t__,int ) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (TYPE_2__*) ;
 scalar_t__ bsi_stmt (int ) ;
 int expr_invariant_in_loop_p (struct loop*,scalar_t__) ;
 int free (TYPE_2__**) ;
 scalar_t__ get_call_expr_in (scalar_t__) ;
 TYPE_2__** get_loop_body (struct loop*) ;
 int is_gimple_reg (int ) ;
 int number_of_iterations_exit (struct loop*,TYPE_1__*,struct tree_niter_desc*,int) ;
 scalar_t__ phi_nodes (int ) ;
 TYPE_1__* single_dom_exit (struct loop*) ;
 TYPE_3__* stmt_ann (scalar_t__) ;

__attribute__((used)) static bool
empty_loop_p (struct loop *loop)
{
  edge exit;
  struct tree_niter_desc niter;
  tree phi, def;
  basic_block *body;
  block_stmt_iterator bsi;
  unsigned i;
  tree stmt;




  exit = single_dom_exit (loop);
  if (!exit)
    return 0;


  if (!number_of_iterations_exit (loop, exit, &niter, 0))
    return 0;


  for (phi = phi_nodes (exit->dest); phi; phi = PHI_CHAIN (phi))
    {
      if (!is_gimple_reg (PHI_RESULT (phi)))
 continue;

      def = PHI_ARG_DEF_FROM_EDGE (phi, exit);

      if (!expr_invariant_in_loop_p (loop, def))
 return 0;
    }



  body = get_loop_body (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {

      if (body[i]->flags & BB_IRREDUCIBLE_LOOP)
 {
   free (body);
   return 0;
 }

      for (bsi = bsi_start (body[i]); !bsi_end_p (bsi); bsi_next (&bsi))
 {
   stmt = bsi_stmt (bsi);
   if (!ZERO_SSA_OPERANDS (stmt, SSA_OP_VIRTUAL_DEFS)
       || stmt_ann (stmt)->has_volatile_ops)
     {
       free (body);
       return 0;
     }



   switch (TREE_CODE (stmt))
     {
     case 128:
     case 129:
       stmt = get_call_expr_in (stmt);
       if (!stmt)
  break;

     case 130:
       if (TREE_SIDE_EFFECTS (stmt))
  {
    free (body);
    return 0;
  }
       break;

     case 131:

       if (ASM_VOLATILE_P (stmt))
  {
    free (body);
    return 0;
  }
       break;

     default:
       break;
     }
 }
      }
  free (body);

  return 1;
}
