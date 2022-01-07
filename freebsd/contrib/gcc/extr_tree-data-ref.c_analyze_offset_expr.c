
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int num; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int BINARY_CLASS_P (scalar_t__) ;
 scalar_t__ INTEGER_CST ;

 int MIN_EXPR ;

 scalar_t__ NULL_TREE ;

 scalar_t__ SSA_VAR_P (scalar_t__) ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ analyze_scalar_evolution (struct loop*,scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ evolution_part_in_loop_num (scalar_t__,int ) ;
 int expr_invariant_in_loop_p (struct loop*,scalar_t__) ;
 scalar_t__ fold_build2 (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 int fprintf (scalar_t__,char*) ;
 int gcc_unreachable () ;
 int highest_pow2_factor (scalar_t__) ;
 scalar_t__ initial_condition_in_loop_num (scalar_t__,int ) ;
 int print_generic_expr (scalar_t__,scalar_t__,int ) ;
 scalar_t__ size_binop (int const,scalar_t__,scalar_t__) ;
 scalar_t__ ssize_int (int ) ;
 int ssizetype ;
 scalar_t__ strip_conversion (scalar_t__) ;

__attribute__((used)) static bool
analyze_offset_expr (tree expr,
       struct loop *loop,
       tree *initial_offset,
       tree *misalign,
       tree *aligned_to,
       tree *step)
{
  tree oprnd0;
  tree oprnd1;
  tree left_offset = ssize_int (0);
  tree right_offset = ssize_int (0);
  tree left_misalign = ssize_int (0);
  tree right_misalign = ssize_int (0);
  tree left_step = ssize_int (0);
  tree right_step = ssize_int (0);
  enum tree_code code;
  tree init, evolution;
  tree left_aligned_to = NULL_TREE, right_aligned_to = NULL_TREE;

  *step = NULL_TREE;
  *misalign = NULL_TREE;
  *aligned_to = NULL_TREE;
  *initial_offset = NULL_TREE;


  expr = strip_conversion (expr);
  if (!expr)
    return 0;



  if (TREE_CODE (expr) == INTEGER_CST)
    {
      *initial_offset = fold_convert (ssizetype, expr);
      *misalign = fold_convert (ssizetype, expr);
      *step = ssize_int (0);
      return 1;
    }



  if (SSA_VAR_P (expr))
    {
      tree access_fn = analyze_scalar_evolution (loop, expr);

      if (access_fn == chrec_dont_know)

 return 0;

      init = initial_condition_in_loop_num (access_fn, loop->num);
      if (!expr_invariant_in_loop_p (loop, init))




 return 0;

      evolution = evolution_part_in_loop_num (access_fn, loop->num);
      if (evolution && TREE_CODE (evolution) != INTEGER_CST)

 return 0;

      if (TREE_CODE (init) == INTEGER_CST)
 *misalign = fold_convert (ssizetype, init);
      else

 *misalign = NULL_TREE;

      *initial_offset = fold_convert (ssizetype, init);

      *step = evolution ? fold_convert (ssizetype, evolution) : ssize_int (0);
      return 1;
    }


  if (!BINARY_CLASS_P (expr))
    {

      if (dump_file && (dump_flags & TDF_DETAILS))
        {
   fprintf (dump_file, "\nNot binary expression ");
          print_generic_expr (dump_file, expr, TDF_SLIM);
   fprintf (dump_file, "\n");
 }
      return 0;
    }
  oprnd0 = TREE_OPERAND (expr, 0);
  oprnd1 = TREE_OPERAND (expr, 1);

  if (!analyze_offset_expr (oprnd0, loop, &left_offset, &left_misalign,
       &left_aligned_to, &left_step)
      || !analyze_offset_expr (oprnd1, loop, &right_offset, &right_misalign,
          &right_aligned_to, &right_step))
    return 0;


  code = TREE_CODE (expr);
  switch (code)
    {
    case 129:
      if (TREE_CODE (right_offset) != INTEGER_CST)



 return 0;


      left_offset = strip_conversion (left_offset);
      if (!left_offset)
 return 0;

      if (SSA_VAR_P (left_offset))
 {





   *misalign = NULL_TREE;
   *aligned_to = ssize_int (highest_pow2_factor (right_offset));
 }
      else
 {

   if (left_misalign)
     {


       *misalign = size_binop (code, left_misalign, right_misalign);
       if (left_aligned_to && right_aligned_to)
  *aligned_to = size_binop (MIN_EXPR, left_aligned_to,
       right_aligned_to);
       else
  *aligned_to = left_aligned_to ?
    left_aligned_to : right_aligned_to;
     }
   else
     *misalign = NULL_TREE;
 }



      *step = size_binop (129, left_step, right_offset);
      break;

    case 128:
    case 130:

      *step = size_binop (code, left_step, right_step);


      if ((!left_misalign && !left_aligned_to)
   || (!right_misalign && !right_aligned_to))
 {
   *misalign = NULL_TREE;
   *aligned_to = NULL_TREE;
   break;
 }

      if (left_misalign && right_misalign)
 *misalign = size_binop (code, left_misalign, right_misalign);
      else
 *misalign = left_misalign ? left_misalign : right_misalign;

      if (left_aligned_to && right_aligned_to)
 *aligned_to = size_binop (MIN_EXPR, left_aligned_to, right_aligned_to);
      else
 *aligned_to = left_aligned_to ? left_aligned_to : right_aligned_to;

      break;

    default:
      gcc_unreachable ();
    }


  *initial_offset = fold_convert (ssizetype,
      fold_build2 (code, TREE_TYPE (left_offset),
            left_offset,
            right_offset));
  return 1;
}
