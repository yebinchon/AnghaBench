
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int subvar_t ;
struct ptr_info_def {int dummy; } ;
struct data_reference {int dummy; } ;



 int INTEGER_CST ;

 int NULL_TREE ;

 int POINTER_TYPE_P (int ) ;

 int STRIP_NOPS (int ) ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_ALIGN_UNIT (int ) ;
 int dump_file ;
 int dump_flags ;
 int fold_convert (int ,int ) ;
 int fprintf (int ,char*) ;
 int object_analysis (int ,int ,int,struct data_reference**,int *,int *,int *,int *,int *,struct ptr_info_def**,int *) ;
 int print_generic_expr (int ,int ,int ) ;
 int size_binop (int,int ,int ) ;
 int ssize_int (int ) ;
 int ssizetype ;

__attribute__((used)) static tree
address_analysis (tree expr, tree stmt, bool is_read, struct data_reference *dr,
    tree *offset, tree *misalign, tree *aligned_to, tree *step)
{
  tree oprnd0, oprnd1, base_address, offset_expr, base_addr0, base_addr1;
  tree address_offset = ssize_int (0), address_misalign = ssize_int (0);
  tree dummy, address_aligned_to = NULL_TREE;
  struct ptr_info_def *dummy1;
  subvar_t dummy2;

  switch (TREE_CODE (expr))
    {
    case 129:
    case 130:

      oprnd0 = TREE_OPERAND (expr, 0);
      oprnd1 = TREE_OPERAND (expr, 1);

      STRIP_NOPS (oprnd0);
      STRIP_NOPS (oprnd1);



      base_addr0 = address_analysis (oprnd0, stmt, is_read, dr, &address_offset,
         &address_misalign, &address_aligned_to,
         step);

      base_addr1 = address_analysis (oprnd1, stmt, is_read, dr, &address_offset,
         &address_misalign, &address_aligned_to,
         step);



      if ((base_addr0 && base_addr1) || (!base_addr0 && !base_addr1))
 {
   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file,
      "\neither more than one address or no addresses in expr ");
       print_generic_expr (dump_file, expr, TDF_SLIM);
       fprintf (dump_file, "\n");
     }
   return NULL_TREE;
 }


      oprnd0 = TREE_OPERAND (expr, 0);
      oprnd1 = TREE_OPERAND (expr, 1);

      offset_expr = base_addr0 ?
 fold_convert (ssizetype, oprnd1) : fold_convert (ssizetype, oprnd0);




      if (TREE_CODE (offset_expr) == INTEGER_CST && address_misalign)
 {
   *misalign = size_binop (TREE_CODE (expr), address_misalign,
      offset_expr);
   *aligned_to = address_aligned_to;
 }
      else
 {
   *misalign = NULL_TREE;
   *aligned_to = NULL_TREE;
 }



      *offset = size_binop (TREE_CODE (expr), address_offset, offset_expr);
      return base_addr0 ? base_addr0 : base_addr1;

    case 131:
      base_address = object_analysis (TREE_OPERAND (expr, 0), stmt, is_read,
          &dr, offset, misalign, aligned_to, step,
          &dummy, &dummy1, &dummy2);
      return base_address;

    case 128:
      if (!POINTER_TYPE_P (TREE_TYPE (expr)))
 {
   if (dump_file && (dump_flags & TDF_DETAILS))
     {
       fprintf (dump_file, "\nnot pointer SSA_NAME ");
       print_generic_expr (dump_file, expr, TDF_SLIM);
       fprintf (dump_file, "\n");
     }
   return NULL_TREE;
 }
      *aligned_to = ssize_int (TYPE_ALIGN_UNIT (TREE_TYPE (TREE_TYPE (expr))));
      *misalign = ssize_int (0);
      *offset = ssize_int (0);
      *step = ssize_int (0);
      return expr;

    default:
      return NULL_TREE;
    }
}
