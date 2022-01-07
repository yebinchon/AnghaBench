
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
typedef int basic_block ;





 int TDF_DETAILS ;
 int TDF_SLIM ;
 int TREE_CODE (int ) ;
 int dump_file ;
 int dump_flags ;
 int fprintf (int ,char*) ;
 int if_convertible_modify_expr_p (struct loop*,int ,int ) ;
 int print_generic_stmt (int ,int ,int ) ;

__attribute__((used)) static bool
if_convertible_stmt_p (struct loop *loop, basic_block bb, tree stmt)
{
  switch (TREE_CODE (stmt))
    {
    case 129:
      break;

    case 128:

      if (!if_convertible_modify_expr_p (loop, bb, stmt))
 return 0;
      break;

    case 130:
      break;

    default:

      if (dump_file && (dump_flags & TDF_DETAILS))
 {
   fprintf (dump_file, "don't know what to do\n");
   print_generic_stmt (dump_file, stmt, TDF_SLIM);
 }
      return 0;
      break;
    }

  return 1;
}
