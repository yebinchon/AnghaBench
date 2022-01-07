
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {scalar_t__ header; } ;
typedef int block_stmt_iterator ;
typedef scalar_t__ basic_block ;
typedef int LOC ;


 scalar_t__ EXPR_FILENAME (scalar_t__) ;
 scalar_t__ EXPR_HAS_LOCATION (scalar_t__) ;
 scalar_t__ EXPR_LINENO (scalar_t__) ;
 int EXPR_LOC (scalar_t__) ;
 scalar_t__ EXPR_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int UNKNOWN_LOC ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (scalar_t__) ;
 scalar_t__ bsi_stmt (int ) ;
 scalar_t__ get_loop_exit_condition (struct loop*) ;

LOC
find_loop_location (struct loop *loop)
{
  tree node = NULL_TREE;
  basic_block bb;
  block_stmt_iterator si;

  if (!loop)
    return UNKNOWN_LOC;

  node = get_loop_exit_condition (loop);

  if (node && EXPR_P (node) && EXPR_HAS_LOCATION (node)
      && EXPR_FILENAME (node) && EXPR_LINENO (node))
    return EXPR_LOC (node);




  if (!loop->header)
    return UNKNOWN_LOC;

  bb = loop->header;

  for (si = bsi_start (bb); !bsi_end_p (si); bsi_next (&si))
    {
      node = bsi_stmt (si);
      if (node && EXPR_P (node) && EXPR_HAS_LOCATION (node))
        return EXPR_LOC (node);
    }

  return UNKNOWN_LOC;
}
