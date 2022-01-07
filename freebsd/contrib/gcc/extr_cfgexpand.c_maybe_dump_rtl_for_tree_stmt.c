
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 int print_rtl (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
maybe_dump_rtl_for_tree_stmt (tree stmt, rtx since)
{
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "\n;; ");
      print_generic_expr (dump_file, stmt, TDF_SLIM);
      fprintf (dump_file, "\n");

      print_rtl (dump_file, since ? NEXT_INSN (since) : since);
    }
}
