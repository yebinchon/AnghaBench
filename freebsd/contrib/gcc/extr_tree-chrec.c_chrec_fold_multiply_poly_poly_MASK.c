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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  dconst2 ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static inline tree 
FUNC12 (tree type, 
			       tree poly0, 
			       tree poly1)
{
  tree t0, t1, t2;
  int var;

  FUNC11 (poly0);
  FUNC11 (poly1);
  FUNC11 (FUNC4 (poly0) == POLYNOMIAL_CHREC);
  FUNC11 (FUNC4 (poly1) == POLYNOMIAL_CHREC);
  FUNC11 (FUNC10 (poly0) == FUNC10 (poly1));
  FUNC11 (type == FUNC10 (poly0));
  
  /* {a, +, b}_1 * {c, +, d}_2  ->  {c*{a, +, b}_1, +, d}_2,
     {a, +, b}_2 * {c, +, d}_1  ->  {a*{c, +, d}_1, +, b}_2,
     {a, +, b}_x * {c, +, d}_x  ->  {a*c, +, a*d + b*c + b*d, +, 2*b*d}_x.  */
  if (FUNC2 (poly0) < FUNC2 (poly1))
    /* poly0 is a constant wrt. poly1.  */
    return FUNC6 
      (FUNC2 (poly1), 
       FUNC8 (type, FUNC0 (poly1), poly0),
       FUNC1 (poly1));
  
  if (FUNC2 (poly1) < FUNC2 (poly0))
    /* poly1 is a constant wrt. poly0.  */
    return FUNC6 
      (FUNC2 (poly0), 
       FUNC8 (type, FUNC0 (poly0), poly1),
       FUNC1 (poly0));
  
  /* poly0 and poly1 are two polynomials in the same variable,
     {a, +, b}_x * {c, +, d}_x  ->  {a*c, +, a*d + b*c + b*d, +, 2*b*d}_x.  */
      
  /* "a*c".  */
  t0 = FUNC8 (type, FUNC0 (poly0), FUNC0 (poly1));

  /* "a*d + b*c + b*d".  */
  t1 = FUNC8 (type, FUNC0 (poly0), FUNC1 (poly1));
  t1 = FUNC9 (type, t1, FUNC8 (type,
						       FUNC1 (poly0),
						       FUNC0 (poly1)));
  t1 = FUNC9 (type, t1, FUNC8 (type,
						       FUNC1 (poly0),
						       FUNC1 (poly1)));
  /* "2*b*d".  */
  t2 = FUNC8 (type, FUNC1 (poly0), FUNC1 (poly1));
  t2 = FUNC8 (type, FUNC3 (type)
			    ? FUNC7 (type, dconst2)
			    : FUNC5 (type, 2), t2);

  var = FUNC2 (poly0);
  return FUNC6 (var, t0,
				 FUNC6 (var, t1, t2));
}