
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int num_merged_labels; } ;


 scalar_t__ DECL_NONLOCAL (int ) ;
 scalar_t__ FORCED_LABEL (int ) ;
 scalar_t__ LABEL_EXPR ;
 int LABEL_EXPR_LABEL (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 TYPE_1__ cfg_stats ;

__attribute__((used)) static inline bool
stmt_starts_bb_p (tree t, tree prev_t)
{
  if (t == NULL_TREE)
    return 0;





  if (TREE_CODE (t) == LABEL_EXPR)
    {

      if (DECL_NONLOCAL (LABEL_EXPR_LABEL (t))
   || FORCED_LABEL (LABEL_EXPR_LABEL (t)))
 return 1;

      if (prev_t && TREE_CODE (prev_t) == LABEL_EXPR)
 {
   if (DECL_NONLOCAL (LABEL_EXPR_LABEL (prev_t)))
     return 1;

   cfg_stats.num_merged_labels++;
   return 0;
 }
      else
 return 1;
    }

  return 0;
}
