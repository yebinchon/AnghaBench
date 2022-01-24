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
struct subscript {int dummy; } ;
struct data_reference {int dummy; } ;
struct data_dependence_relation {int dummy; } ;
typedef  int* lambda_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC2 (struct data_dependence_relation*) ; 
 unsigned int FUNC3 (struct data_dependence_relation*) ; 
 struct subscript* FUNC4 (struct data_dependence_relation*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct data_reference*,unsigned int) ; 
 int FUNC6 (int,int) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 int /*<<< orphan*/  FUNC7 (struct subscript*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_known ; 
 int /*<<< orphan*/  FUNC10 (struct data_dependence_relation*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct data_dependence_relation*) ; 

__attribute__((used)) static bool
FUNC15 (struct data_dependence_relation *ddr,
			     struct data_reference *ddr_a,
			     struct data_reference *ddr_b,
			     lambda_vector dist_v, bool *init_b,
			     int *index_carry)
{
  unsigned i;
  lambda_vector init_v = FUNC13 (FUNC2 (ddr));

  for (i = 0; i < FUNC3 (ddr); i++)
    {
      tree access_fn_a, access_fn_b;
      struct subscript *subscript = FUNC4 (ddr, i);

      if (FUNC9 (FUNC7 (subscript)))
	{
	  FUNC14 (ddr);
	  return false;
	}

      access_fn_a = FUNC5 (ddr_a, i);
      access_fn_b = FUNC5 (ddr_b, i);

      if (FUNC8 (access_fn_a) == POLYNOMIAL_CHREC 
	  && FUNC8 (access_fn_b) == POLYNOMIAL_CHREC)
	{
	  int dist, index;
	  int index_a = FUNC11 (FUNC0 (access_fn_a),
					    FUNC1 (ddr));
	  int index_b = FUNC11 (FUNC0 (access_fn_b),
					    FUNC1 (ddr));

	  /* The dependence is carried by the outermost loop.  Example:
	     | loop_1
	     |   A[{4, +, 1}_1]
	     |   loop_2
	     |     A[{5, +, 1}_2]
	     |   endloop_2
	     | endloop_1
	     In this case, the dependence is carried by loop_1.  */
	  index = index_a < index_b ? index_a : index_b;
	  *index_carry = FUNC6 (index, *index_carry);

	  if (FUNC9 (FUNC7 (subscript)))
	    {
	      FUNC14 (ddr);
	      return false;
	    }
	  
	  dist = FUNC12 (FUNC7 (subscript));

	  /* This is the subscript coupling test.  If we have already
	     recorded a distance for this loop (a distance coming from
	     another subscript), it should be the same.  For example,
	     in the following code, there is no dependence:

	     | loop i = 0, N, 1
	     |   T[i+1][i] = ...
	     |   ... = T[i][i]
	     | endloop
	  */
	  if (init_v[index] != 0 && dist_v[index] != dist)
	    {
	      FUNC10 (ddr, chrec_known);
	      return false;
	    }

	  dist_v[index] = dist;
	  init_v[index] = 1;
	  *init_b = true;
	}
      else
	{
	  /* This can be for example an affine vs. constant dependence
	     (T[i] vs. T[3]) that is not an affine dependence and is
	     not representable as a distance vector.  */
	  FUNC14 (ddr);
	  return false;
	}
    }

  return true;
}