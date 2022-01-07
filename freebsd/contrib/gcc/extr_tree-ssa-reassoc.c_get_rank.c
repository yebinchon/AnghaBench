
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* operand_entry_t ;
struct TYPE_5__ {size_t index; } ;
struct TYPE_4__ {unsigned int rank; } ;


 unsigned int MAX (unsigned int,unsigned int) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ PARM_DECL ;
 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_DEF_STMT (scalar_t__) ;
 scalar_t__ SSA_NAME_VAR (scalar_t__) ;
 int SSA_OP_VIRTUAL_DEFS ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CODE_LENGTH (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int ZERO_SSA_OPERANDS (scalar_t__,int ) ;
 TYPE_3__* bb_for_stmt (scalar_t__) ;
 unsigned int* bb_rank ;
 scalar_t__ default_def (scalar_t__) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 TYPE_1__* find_operand_rank (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 int insert_operand_rank (scalar_t__,unsigned int) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static unsigned int
get_rank (tree e)
{
  operand_entry_t vr;


  if (is_gimple_min_invariant (e))
    return 0;
  if (TREE_CODE (e) == SSA_NAME)
    {
      tree stmt;
      tree rhs;
      unsigned int rank, maxrank;
      int i;

      if (TREE_CODE (SSA_NAME_VAR (e)) == PARM_DECL
   && e == default_def (SSA_NAME_VAR (e)))
 return find_operand_rank (e)->rank;

      stmt = SSA_NAME_DEF_STMT (e);
      if (bb_for_stmt (stmt) == ((void*)0))
 return 0;

      if (TREE_CODE (stmt) != MODIFY_EXPR
   || !ZERO_SSA_OPERANDS (stmt, SSA_OP_VIRTUAL_DEFS))
 return bb_rank[bb_for_stmt (stmt)->index];


      vr = find_operand_rank (e);
      if (vr)
 return vr->rank;



      rank = 0;
      maxrank = bb_rank[bb_for_stmt(stmt)->index];
      rhs = TREE_OPERAND (stmt, 1);
      if (TREE_CODE_LENGTH (TREE_CODE (rhs)) == 0)
 rank = MAX (rank, get_rank (rhs));
      else
 {
   for (i = 0;
        i < TREE_CODE_LENGTH (TREE_CODE (rhs))
   && TREE_OPERAND (rhs, i)
   && rank != maxrank;
        i++)
     rank = MAX(rank, get_rank (TREE_OPERAND (rhs, i)));
 }

      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "Rank for ");
   print_generic_expr (dump_file, e, 0);
   fprintf (dump_file, " is %d\n", (rank + 1));
 }


      insert_operand_rank (e, (rank + 1));
      return (rank + 1);
    }


  return 0;
}
