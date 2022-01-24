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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
#define  MINUS_EXPR 130 
#define  MULT_EXPR 129 
#define  PLUS_EXPR 128 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static inline tree 
FUNC11 (enum tree_code code, 
		     tree type, 
		     tree poly, 
		     tree cst)
{
  FUNC9 (poly);
  FUNC9 (cst);
  FUNC9 (FUNC3 (poly) == POLYNOMIAL_CHREC);
  FUNC9 (!FUNC10 (cst));
  FUNC9 (type == FUNC8 (poly));

  switch (code)
    {
    case PLUS_EXPR:
      return FUNC4 
	(FUNC2 (poly), 
	 FUNC7 (type, FUNC0 (poly), cst),
	 FUNC1 (poly));
      
    case MINUS_EXPR:
      return FUNC4 
	(FUNC2 (poly), 
	 FUNC5 (type, FUNC0 (poly), cst),
	 FUNC1 (poly));
      
    case MULT_EXPR:
      return FUNC4 
	(FUNC2 (poly), 
	 FUNC6 (type, FUNC0 (poly), cst),
	 FUNC6 (type, FUNC1 (poly), cst));
      
    default:
      return chrec_dont_know;
    }
}