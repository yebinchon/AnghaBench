#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  (* elem_op_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_3__ {int /*<<< orphan*/  (* type_for_mode ) (int,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ lang_hooks ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ word_mode ; 

__attribute__((used)) static tree
FUNC10 (block_stmt_iterator *bsi, elem_op_func f, tree type,
			tree a, tree b,
			enum tree_code code)
{
  tree result, compute_type;
  enum machine_mode mode;
  int n_words = FUNC9 (FUNC3 (type), 1) / UNITS_PER_WORD;

  /* We have three strategies.  If the type is already correct, just do
     the operation an element at a time.  Else, if the vector is wider than
     one word, do it a word at a time; finally, if the vector is smaller
     than one word, do it as a scalar.  */
  if (FUNC1 (FUNC0 (type)) == word_mode)
     return FUNC5 (bsi, f,
				     type, FUNC0 (type),
				     a, b, code);
  else if (n_words > 1)
    {
      tree word_type = FUNC4 (n_words);
      result = FUNC5 (bsi, f,
				        word_type, FUNC0 (word_type),
					a, b, code);
      result = FUNC6 (bsi, word_type, result);
    }
  else
    {
      /* Use a single scalar operation with a mode no wider than word_mode.  */
      mode = FUNC7 (FUNC9 (FUNC2 (type), 1), MODE_INT, 0);
      compute_type = lang_hooks.types.type_for_mode (mode, 1);
      result = f (bsi, compute_type, a, b, NULL_TREE, NULL_TREE, code);
    }

  return result;
}