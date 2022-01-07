
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ RESX_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int foreach_reachable_handler (int,int,int ,int ) ;
 int lookup_stmt_eh_region (int ) ;
 int make_eh_edge ;

void
make_eh_edges (tree stmt)
{
  int region_nr;
  bool is_resx;

  if (TREE_CODE (stmt) == RESX_EXPR)
    {
      region_nr = TREE_INT_CST_LOW (TREE_OPERAND (stmt, 0));
      is_resx = 1;
    }
  else
    {
      region_nr = lookup_stmt_eh_region (stmt);
      if (region_nr < 0)
 return;
      is_resx = 0;
    }

  foreach_reachable_handler (region_nr, is_resx, make_eh_edge, stmt);
}
