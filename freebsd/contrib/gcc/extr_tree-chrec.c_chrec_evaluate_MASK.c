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
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,unsigned int) ; 

__attribute__((used)) static tree 
FUNC8 (unsigned var, tree chrec, tree n, unsigned int k)
{
  tree arg0, arg1, binomial_n_k;
  tree type = FUNC4 (chrec);

  while (FUNC3 (chrec) == POLYNOMIAL_CHREC
	 && FUNC2 (chrec) > var)
    chrec = FUNC0 (chrec);

  if (FUNC3 (chrec) == POLYNOMIAL_CHREC
      && FUNC2 (chrec) == var)
    {
      arg0 = FUNC8 (var, FUNC1 (chrec), n, k + 1);
      if (arg0 == chrec_dont_know)
	return chrec_dont_know;
      binomial_n_k = FUNC7 (type, n, k);
      if (!binomial_n_k)
	return chrec_dont_know;
      arg1 = FUNC6 (MULT_EXPR, type,
			  FUNC0 (chrec), binomial_n_k);
      return FUNC5 (type, arg0, arg1);
    }

  binomial_n_k = FUNC7 (type, n, k);
  if (!binomial_n_k)
    return chrec_dont_know;
  
  return FUNC6 (MULT_EXPR, type, chrec, binomial_n_k);
}