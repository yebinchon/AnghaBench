
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
typedef int block_stmt_iterator ;





 int NULL_TREE ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 int TREE_CODE (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int gcc_unreachable () ;
 int print_generic_stmt (scalar_t__,int ,int ) ;
 int tree_if_convert_cond_expr (struct loop*,int ,int ,int *) ;

__attribute__((used)) static tree
tree_if_convert_stmt (struct loop * loop, tree t, tree cond,
        block_stmt_iterator *bsi)
{
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "------if-convert stmt\n");
      print_generic_stmt (dump_file, t, TDF_SLIM);
      print_generic_stmt (dump_file, cond, TDF_SLIM);
    }

  switch (TREE_CODE (t))
    {

    case 129:
      break;

    case 128:





      break;

    case 130:


      tree_if_convert_cond_expr (loop, t, cond, bsi);
      cond = NULL_TREE;
      break;

    default:
      gcc_unreachable ();
    }
  return cond;
}
