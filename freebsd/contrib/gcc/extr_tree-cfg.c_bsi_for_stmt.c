
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;


 int bb_for_stmt (scalar_t__) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 scalar_t__ bsi_stmt (int ) ;
 int gcc_unreachable () ;

extern block_stmt_iterator
bsi_for_stmt (tree stmt)
{
  block_stmt_iterator bsi;

  for (bsi = bsi_start (bb_for_stmt (stmt)); !bsi_end_p (bsi); bsi_next (&bsi))
    if (bsi_stmt (bsi) == stmt)
      return bsi;

  gcc_unreachable ();
}
