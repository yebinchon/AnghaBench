
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int use_operand_p ;
typedef scalar_t__ tree ;
struct occurrence {scalar_t__ recip_def_stmt; scalar_t__ recip_def; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {scalar_t__ aux; } ;


 int MULT_EXPR ;
 int SET_USE (int ,scalar_t__) ;
 int TREE_OPERAND (scalar_t__,int) ;
 int TREE_SET_CODE (int ,int ) ;
 scalar_t__ USE_STMT (int ) ;
 TYPE_1__* bb_for_stmt (scalar_t__) ;
 int fold_stmt_inplace (scalar_t__) ;
 int update_stmt (scalar_t__) ;

__attribute__((used)) static inline void
replace_reciprocal (use_operand_p use_p)
{
  tree use_stmt = USE_STMT (use_p);
  basic_block bb = bb_for_stmt (use_stmt);
  struct occurrence *occ = (struct occurrence *) bb->aux;

  if (occ->recip_def && use_stmt != occ->recip_def_stmt)
    {
      TREE_SET_CODE (TREE_OPERAND (use_stmt, 1), MULT_EXPR);
      SET_USE (use_p, occ->recip_def);
      fold_stmt_inplace (use_stmt);
      update_stmt (use_stmt);
    }
}
