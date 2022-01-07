
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int linearized; int constants_eliminated; int ops_eliminated; int rewritten; } ;


 int CDI_POST_DOMINATORS ;
 int TDF_STATS ;
 int VEC_free (int ,int ,int ) ;
 int bb_rank ;
 int broken_up_subtracts ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 int free (int ) ;
 int free_alloc_pool (int ) ;
 int free_dominance_info (int ) ;
 int heap ;
 int htab_delete (int ) ;
 int operand_entry_pool ;
 int operand_rank ;
 TYPE_1__ reassociate_stats ;
 int tree ;

__attribute__((used)) static void
fini_reassoc (void)
{

  if (dump_file && (dump_flags & TDF_STATS))
    {
      fprintf (dump_file, "Reassociation stats:\n");
      fprintf (dump_file, "Linearized: %d\n",
        reassociate_stats.linearized);
      fprintf (dump_file, "Constants eliminated: %d\n",
        reassociate_stats.constants_eliminated);
      fprintf (dump_file, "Ops eliminated: %d\n",
        reassociate_stats.ops_eliminated);
      fprintf (dump_file, "Statements rewritten: %d\n",
        reassociate_stats.rewritten);
    }
  htab_delete (operand_rank);

  free_alloc_pool (operand_entry_pool);
  free (bb_rank);
  VEC_free (tree, heap, broken_up_subtracts);
  free_dominance_info (CDI_POST_DOMINATORS);
}
