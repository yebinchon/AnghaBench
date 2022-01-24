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
typedef  int /*<<< orphan*/  tree ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIELD_DECL ; 
 int GS_UNHANDLED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum gimplify_status
FUNC15 (tree *expr_p, tree *pre_p)
{
  tree addr = FUNC5 (*expr_p, 0);
  tree rhs = FUNC5 (*expr_p, 1);
  tree type = FUNC8 (FUNC6 (FUNC6 (addr)));
  HOST_WIDE_INT index;

  /* Make sure the type is one of the supported sizes.  */
  index = FUNC14 (FUNC9 (type), 1);
  index = FUNC10 (index);
  if (index >= 0 && index <= 4)
    {
      enum gimplify_status gs;
      unsigned int align;

      if (FUNC1 (FUNC5 (addr, 0)))
	align = FUNC0 (FUNC5 (addr, 0));
      else if (FUNC4 (FUNC5 (addr, 0)) == COMPONENT_REF
	       && FUNC4 (FUNC5 (FUNC5 (addr, 0), 1))
		  == FIELD_DECL)
	align = FUNC0 (FUNC5 (FUNC5 (addr, 0), 1));
      else
	align = FUNC7 (type);

      /* __sync builtins require strict data alignment.  */
      if (FUNC10 (align) >= index)
	{
	  /* When possible, use specialized atomic update functions.  */
	  if (FUNC2 (type) || FUNC3 (type))
	    {
	      gs = FUNC11 (expr_p, addr, rhs, index);
	      if (gs != GS_UNHANDLED)
		return gs;
	    }

	  /* If we don't have specialized __sync builtins, try and implement
	     as a compare and swap loop.  */
	  gs = FUNC13 (expr_p, pre_p, addr, rhs, index);
	  if (gs != GS_UNHANDLED)
	    return gs;
	}
    }

  /* The ultimate fallback is wrapping the operation in a mutex.  */
  return FUNC12 (expr_p, pre_p, addr, rhs);
}