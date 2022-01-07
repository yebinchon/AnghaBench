
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct iv_cand {scalar_t__ incremented_at; } ;
typedef int block_stmt_iterator ;
typedef scalar_t__ basic_block ;


 int CDI_DOMINATORS ;
 scalar_t__ bb_for_stmt (scalar_t__) ;
 int bsi_last (scalar_t__) ;
 int bsi_prev (int *) ;
 scalar_t__ bsi_stmt (int ) ;
 int dominated_by_p (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
stmt_after_ip_original_pos (struct iv_cand *cand, tree stmt)
{
  basic_block cand_bb = bb_for_stmt (cand->incremented_at);
  basic_block stmt_bb = bb_for_stmt (stmt);
  block_stmt_iterator bsi;

  if (!dominated_by_p (CDI_DOMINATORS, stmt_bb, cand_bb))
    return 0;

  if (stmt_bb != cand_bb)
    return 1;



  for (bsi = bsi_last (stmt_bb); ; bsi_prev (&bsi))
    {
      if (bsi_stmt (bsi) == cand->incremented_at)
 return 0;
      if (bsi_stmt (bsi) == stmt)
 return 1;
    }
}
