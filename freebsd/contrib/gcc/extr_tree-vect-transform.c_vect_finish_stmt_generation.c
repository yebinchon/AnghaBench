
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;


 int BSI_SAME_STMT ;
 int EXPR_LOCATION (scalar_t__) ;
 int EXPR_LOCUS (scalar_t__) ;
 int REPORT_DETAILS ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 int SET_EXPR_LOCUS (scalar_t__,int ) ;
 int TDF_SLIM ;
 int bsi_insert_before (int *,scalar_t__,int ) ;
 scalar_t__ bsi_stmt (int ) ;
 int fprintf (int ,char*) ;
 int gcc_assert (int) ;
 int print_generic_expr (int ,scalar_t__,int ) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;

__attribute__((used)) static void
vect_finish_stmt_generation (tree stmt, tree vec_stmt, block_stmt_iterator *bsi)
{
  bsi_insert_before (bsi, vec_stmt, BSI_SAME_STMT);

  if (vect_print_dump_info (REPORT_DETAILS))
    {
      fprintf (vect_dump, "add new stmt: ");
      print_generic_expr (vect_dump, vec_stmt, TDF_SLIM);
    }


  gcc_assert (stmt == bsi_stmt (*bsi));




  SET_EXPR_LOCUS (vec_stmt, EXPR_LOCUS (stmt));

}
