
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct loop {int depth; } ;
typedef int htab_t ;
typedef TYPE_1__* basic_block ;
struct TYPE_6__ {int depth; } ;
struct TYPE_5__ {int loop_father; } ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 int CHREC_VARIABLE (int ) ;

 int FOLD_CONVERSIONS ;
 int INSERT_SUPERLOOP_CHRECS ;




 int NULL_TREE ;
 int PARAM_SCEV_MAX_EXPR_SIZE ;
 int PARAM_VALUE (int ) ;





 int SSA_NAME_DEF_STMT (int ) ;
 int SSA_NAME_VERSION (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_CODE_LENGTH (int const) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int already_instantiated ;
 int analyze_scalar_evolution (struct loop*,int ) ;
 scalar_t__ automatically_generated_chrec_p (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 int bitmap_bit_p (int ,int ) ;
 int bitmap_clear_bit (int ,int ) ;
 int bitmap_set_bit (int ,int ) ;
 int build_polynomial_chrec (int ,int ,int ) ;
 int chrec_convert (int ,int ,int ) ;
 int chrec_convert_aggressive (int ,int ) ;
 int chrec_dont_know ;
 int chrec_fold_minus (int ,int ,int ) ;
 int chrec_fold_multiply (int ,int ,int ) ;
 int chrec_fold_plus (int ,int ,int ) ;
 int chrec_known ;
 int chrec_type (int ) ;
 struct loop* find_common_loop (struct loop*,int ) ;
 int flow_bb_inside_loop_p (struct loop*,TYPE_1__*) ;
 int fold_build1 (int const,int ,int ) ;
 int fold_build2 (int const,int ,int ,int ) ;
 int fold_build3 (int const,int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int get_instantiated_value (int ,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;
 int loop_closed_phi_def (int ) ;
 TYPE_2__* loop_containing_stmt (int ) ;
 int set_instantiated_value (int ,int ,int ) ;

__attribute__((used)) static tree
instantiate_parameters_1 (struct loop *loop, tree chrec, int flags, htab_t cache,
     int size_expr)
{
  tree res, op0, op1, op2;
  basic_block def_bb;
  struct loop *def_loop;
  tree type = chrec_type (chrec);


  if (size_expr++ > PARAM_VALUE (PARAM_SCEV_MAX_EXPR_SIZE))
    return chrec_dont_know;

  if (automatically_generated_chrec_p (chrec)
      || is_gimple_min_invariant (chrec))
    return chrec;

  switch (TREE_CODE (chrec))
    {
    case 128:
      def_bb = bb_for_stmt (SSA_NAME_DEF_STMT (chrec));



      if (!def_bb
   || (!(flags & INSERT_SUPERLOOP_CHRECS)
       && !flow_bb_inside_loop_p (loop, def_bb)))
 return chrec;
      res = get_instantiated_value (cache, chrec);
      if (res)
 return res;





      res = !flow_bb_inside_loop_p (loop, def_bb) ? chrec : chrec_dont_know;
      set_instantiated_value (cache, chrec, res);






      if (bitmap_bit_p (already_instantiated, SSA_NAME_VERSION (chrec)))
 return res;

      def_loop = find_common_loop (loop, def_bb->loop_father);



      bitmap_set_bit (already_instantiated, SSA_NAME_VERSION (chrec));
      res = analyze_scalar_evolution (def_loop, chrec);


      if (TREE_CODE (res) == 128
   && (loop_containing_stmt (SSA_NAME_DEF_STMT (res)) == ((void*)0)
       || (loop_containing_stmt (SSA_NAME_DEF_STMT (res))->depth
    > def_loop->depth)))
 {
   if (res == chrec)
     res = loop_closed_phi_def (chrec);
   else
     res = chrec;

   if (res == NULL_TREE)
     res = chrec_dont_know;
 }

      else if (res != chrec_dont_know)
 res = instantiate_parameters_1 (loop, res, flags, cache, size_expr);

      bitmap_clear_bit (already_instantiated, SSA_NAME_VERSION (chrec));


      set_instantiated_value (cache, chrec, res);
      return res;

    case 131:
      op0 = instantiate_parameters_1 (loop, CHREC_LEFT (chrec),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
 return chrec_dont_know;

      op1 = instantiate_parameters_1 (loop, CHREC_RIGHT (chrec),
          flags, cache, size_expr);
      if (op1 == chrec_dont_know)
 return chrec_dont_know;

      if (CHREC_LEFT (chrec) != op0
   || CHREC_RIGHT (chrec) != op1)
 {
   op1 = chrec_convert (chrec_type (op0), op1, NULL_TREE);
   chrec = build_polynomial_chrec (CHREC_VARIABLE (chrec), op0, op1);
 }
      return chrec;

    case 132:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
 return chrec_dont_know;

      op1 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 1),
          flags, cache, size_expr);
      if (op1 == chrec_dont_know)
 return chrec_dont_know;

      if (TREE_OPERAND (chrec, 0) != op0
   || TREE_OPERAND (chrec, 1) != op1)
 {
   op0 = chrec_convert (type, op0, NULL_TREE);
   op1 = chrec_convert (type, op1, NULL_TREE);
   chrec = chrec_fold_plus (type, op0, op1);
 }
      return chrec;

    case 136:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
 return chrec_dont_know;

      op1 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 1),
          flags, cache, size_expr);
      if (op1 == chrec_dont_know)
 return chrec_dont_know;

      if (TREE_OPERAND (chrec, 0) != op0
   || TREE_OPERAND (chrec, 1) != op1)
 {
   op0 = chrec_convert (type, op0, NULL_TREE);
   op1 = chrec_convert (type, op1, NULL_TREE);
   chrec = chrec_fold_minus (type, op0, op1);
 }
      return chrec;

    case 135:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
 return chrec_dont_know;

      op1 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 1),
          flags, cache, size_expr);
      if (op1 == chrec_dont_know)
 return chrec_dont_know;

      if (TREE_OPERAND (chrec, 0) != op0
   || TREE_OPERAND (chrec, 1) != op1)
 {
   op0 = chrec_convert (type, op0, NULL_TREE);
   op1 = chrec_convert (type, op1, NULL_TREE);
   chrec = chrec_fold_multiply (type, op0, op1);
 }
      return chrec;

    case 133:
    case 137:
    case 134:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
        return chrec_dont_know;

      if (flags & FOLD_CONVERSIONS)
 {
   tree tmp = chrec_convert_aggressive (TREE_TYPE (chrec), op0);
   if (tmp)
     return tmp;
 }

      if (op0 == TREE_OPERAND (chrec, 0))
 return chrec;




      if (flags & FOLD_CONVERSIONS)
 return fold_convert (TREE_TYPE (chrec), op0);

      return chrec_convert (TREE_TYPE (chrec), op0, NULL_TREE);

    case 129:
      return chrec_dont_know;

    case 130:
      return chrec_known;

    default:
      break;
    }

  switch (TREE_CODE_LENGTH (TREE_CODE (chrec)))
    {
    case 3:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
 return chrec_dont_know;

      op1 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 1),
          flags, cache, size_expr);
      if (op1 == chrec_dont_know)
 return chrec_dont_know;

      op2 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 2),
          flags, cache, size_expr);
      if (op2 == chrec_dont_know)
        return chrec_dont_know;

      if (op0 == TREE_OPERAND (chrec, 0)
   && op1 == TREE_OPERAND (chrec, 1)
   && op2 == TREE_OPERAND (chrec, 2))
 return chrec;

      return fold_build3 (TREE_CODE (chrec),
     TREE_TYPE (chrec), op0, op1, op2);

    case 2:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
 return chrec_dont_know;

      op1 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 1),
          flags, cache, size_expr);
      if (op1 == chrec_dont_know)
        return chrec_dont_know;

      if (op0 == TREE_OPERAND (chrec, 0)
   && op1 == TREE_OPERAND (chrec, 1))
 return chrec;
      return fold_build2 (TREE_CODE (chrec), TREE_TYPE (chrec), op0, op1);

    case 1:
      op0 = instantiate_parameters_1 (loop, TREE_OPERAND (chrec, 0),
          flags, cache, size_expr);
      if (op0 == chrec_dont_know)
        return chrec_dont_know;
      if (op0 == TREE_OPERAND (chrec, 0))
 return chrec;
      return fold_build1 (TREE_CODE (chrec), TREE_TYPE (chrec), op0);

    case 0:
      return chrec;

    default:
      break;
    }


  return chrec_dont_know;
}
