#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int TREE_SIDE_EFFECTS ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  BLKmode ; 
 int /*<<< orphan*/  BLOCK_OP_NORMAL ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  va_list_type_node ; 

__attribute__((used)) static rtx
FUNC15 (tree arglist)
{
  tree dst, src, t;

  dst = FUNC3 (arglist);
  src = FUNC3 (FUNC0 (arglist));

  dst = FUNC14 (dst, 1);
  src = FUNC14 (src, 0);

  if (FUNC1 (va_list_type_node) != ARRAY_TYPE)
    {
      t = FUNC6 (MODIFY_EXPR, va_list_type_node, dst, src);
      TREE_SIDE_EFFECTS (t) = 1;
      FUNC9 (t, const0_rtx, VOIDmode, EXPAND_NORMAL);
    }
  else
    {
      rtx dstb, srcb, size;

      /* Evaluate to pointers.  */
      dstb = FUNC9 (dst, NULL_RTX, Pmode, EXPAND_NORMAL);
      srcb = FUNC9 (src, NULL_RTX, Pmode, EXPAND_NORMAL);
      size = FUNC9 (FUNC5 (va_list_type_node), NULL_RTX,
			  VOIDmode, EXPAND_NORMAL);

      dstb = FUNC7 (Pmode, dstb);
      srcb = FUNC7 (Pmode, srcb);

      /* "Dereference" to BLKmode memories.  */
      dstb = FUNC10 (BLKmode, dstb);
      FUNC12 (dstb, FUNC11 (FUNC2 (FUNC2 (dst))));
      FUNC13 (dstb, FUNC4 (va_list_type_node));
      srcb = FUNC10 (BLKmode, srcb);
      FUNC12 (srcb, FUNC11 (FUNC2 (FUNC2 (src))));
      FUNC13 (srcb, FUNC4 (va_list_type_node));

      /* Copy.  */
      FUNC8 (dstb, srcb, size, BLOCK_OP_NORMAL);
    }

  return const0_rtx;
}