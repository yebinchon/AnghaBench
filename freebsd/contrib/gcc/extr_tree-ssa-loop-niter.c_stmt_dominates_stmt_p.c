
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;
typedef scalar_t__ basic_block ;


 int CDI_DOMINATORS ;
 scalar_t__ bb_for_stmt (scalar_t__) ;
 int bsi_next (int *) ;
 int bsi_start (scalar_t__) ;
 scalar_t__ bsi_stmt (int ) ;
 int dominated_by_p (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
stmt_dominates_stmt_p (tree s1, tree s2)
{
  basic_block bb1 = bb_for_stmt (s1), bb2 = bb_for_stmt (s2);

  if (!bb1
      || s1 == s2)
    return 1;

  if (bb1 == bb2)
    {
      block_stmt_iterator bsi;

      for (bsi = bsi_start (bb1); bsi_stmt (bsi) != s2; bsi_next (&bsi))
 if (bsi_stmt (bsi) == s1)
   return 1;

      return 0;
    }

  return dominated_by_p (CDI_DOMINATORS, bb2, bb1);
}
