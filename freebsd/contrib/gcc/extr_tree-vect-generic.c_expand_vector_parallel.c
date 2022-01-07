
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int (* elem_op_func ) (int *,int ,int ,int ,int ,int ,int) ;
typedef int block_stmt_iterator ;
struct TYPE_3__ {int (* type_for_mode ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int MODE_INT ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 int TYPE_SIZE (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int UNITS_PER_WORD ;
 int build_word_mode_vector_type (int) ;
 int expand_vector_piecewise (int *,int (*) (int *,int ,int ,int ,int ,int ,int),int ,int ,int ,int ,int) ;
 int gimplify_val (int *,int ,int ) ;
 TYPE_2__ lang_hooks ;
 int mode_for_size (int,int ,int ) ;
 int stub1 (int,int) ;
 int tree_low_cst (int ,int) ;
 scalar_t__ word_mode ;

__attribute__((used)) static tree
expand_vector_parallel (block_stmt_iterator *bsi, elem_op_func f, tree type,
   tree a, tree b,
   enum tree_code code)
{
  tree result, compute_type;
  enum machine_mode mode;
  int n_words = tree_low_cst (TYPE_SIZE_UNIT (type), 1) / UNITS_PER_WORD;





  if (TYPE_MODE (TREE_TYPE (type)) == word_mode)
     return expand_vector_piecewise (bsi, f,
         type, TREE_TYPE (type),
         a, b, code);
  else if (n_words > 1)
    {
      tree word_type = build_word_mode_vector_type (n_words);
      result = expand_vector_piecewise (bsi, f,
            word_type, TREE_TYPE (word_type),
     a, b, code);
      result = gimplify_val (bsi, word_type, result);
    }
  else
    {

      mode = mode_for_size (tree_low_cst (TYPE_SIZE (type), 1), MODE_INT, 0);
      compute_type = lang_hooks.types.type_for_mode (mode, 1);
      result = f (bsi, compute_type, a, b, NULL_TREE, NULL_TREE, code);
    }

  return result;
}
