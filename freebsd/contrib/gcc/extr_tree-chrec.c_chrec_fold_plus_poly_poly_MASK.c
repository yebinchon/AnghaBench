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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int PLUS_EXPR ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  dconstm1 ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static inline tree 
FUNC14 (enum tree_code code, 
			   tree type, 
			   tree poly0, 
			   tree poly1)
{
  tree left, right;

  FUNC13 (poly0);
  FUNC13 (poly1);
  FUNC13 (FUNC4 (poly0) == POLYNOMIAL_CHREC);
  FUNC13 (FUNC4 (poly1) == POLYNOMIAL_CHREC);
  FUNC13 (FUNC11 (poly0) == FUNC11 (poly1));
  FUNC13 (type == FUNC11 (poly0));
  
  /*
    {a, +, b}_1 + {c, +, d}_2  ->  {{a, +, b}_1 + c, +, d}_2,
    {a, +, b}_2 + {c, +, d}_1  ->  {{c, +, d}_1 + a, +, b}_2,
    {a, +, b}_x + {c, +, d}_x  ->  {a+c, +, b+d}_x.  */
  if (FUNC2 (poly0) < FUNC2 (poly1))
    {
      if (code == PLUS_EXPR)
	return FUNC6 
	  (FUNC2 (poly1), 
	   FUNC10 (type, poly0, FUNC0 (poly1)),
	   FUNC1 (poly1));
      else
	return FUNC6 
	  (FUNC2 (poly1), 
	   FUNC8 (type, poly0, FUNC0 (poly1)),
	   FUNC9 (type, FUNC1 (poly1), 
				FUNC3 (type)
				? FUNC7 (type, dconstm1)
				: FUNC5 (type, -1)));
    }
  
  if (FUNC2 (poly0) > FUNC2 (poly1))
    {
      if (code == PLUS_EXPR)
	return FUNC6 
	  (FUNC2 (poly0), 
	   FUNC10 (type, FUNC0 (poly0), poly1),
	   FUNC1 (poly0));
      else
	return FUNC6 
	  (FUNC2 (poly0), 
	   FUNC8 (type, FUNC0 (poly0), poly1),
	   FUNC1 (poly0));
    }
  
  if (code == PLUS_EXPR)
    {
      left = FUNC10 
	(type, FUNC0 (poly0), FUNC0 (poly1));
      right = FUNC10 
	(type, FUNC1 (poly0), FUNC1 (poly1));
    }
  else
    {
      left = FUNC8 
	(type, FUNC0 (poly0), FUNC0 (poly1));
      right = FUNC8 
	(type, FUNC1 (poly0), FUNC1 (poly1));
    }

  if (FUNC12 (right))
    return left;
  else
    return FUNC6 
      (FUNC2 (poly0), left, right); 
}