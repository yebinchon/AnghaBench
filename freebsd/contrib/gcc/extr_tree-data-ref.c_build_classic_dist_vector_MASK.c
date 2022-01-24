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
struct data_dependence_relation {int dummy; } ;
typedef  int /*<<< orphan*/  lambda_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_dependence_relation*) ; 
 scalar_t__ FUNC1 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC2 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC3 (struct data_dependence_relation*,unsigned int) ; 
 int FUNC4 (struct data_dependence_relation*) ; 
 unsigned int FUNC5 (struct data_dependence_relation*) ; 
 scalar_t__ NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC6 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC7 (struct data_dependence_relation*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct data_dependence_relation*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct data_dependence_relation*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC17 (struct data_dependence_relation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct data_dependence_relation*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC19 (struct data_dependence_relation *ddr)
{
  bool init_b = false;
  int index_carry = FUNC4 (ddr);
  lambda_vector dist_v;

  if (FUNC1 (ddr) != NULL_TREE)
    return true;

  if (FUNC16 (ddr))
    {
      /* Save the 0 vector.  */
      dist_v = FUNC14 (FUNC4 (ddr));
      FUNC17 (ddr, dist_v);

      if (FUNC4 (ddr) > 1)
	FUNC6 (ddr);

      return true;
    }

  dist_v = FUNC14 (FUNC4 (ddr));
  if (!FUNC8 (ddr, FUNC0 (ddr), FUNC2 (ddr),
				    dist_v, &init_b, &index_carry))
    return false;

  /* Save the distance vector if we initialized one.  */
  if (init_b)
    {
      /* Verify a basic constraint: classic distance vectors should
	 always be lexicographically positive.

	 Data references are collected in the order of execution of
	 the program, thus for the following loop

	 | for (i = 1; i < 100; i++)
	 |   for (j = 1; j < 100; j++)
	 |     {
	 |       t = T[j+1][i-1];  // A
	 |       T[j][i] = t + 2;  // B
	 |     }

	 references are collected following the direction of the wind:
	 A then B.  The data dependence tests are performed also
	 following this order, such that we're looking at the distance
	 separating the elements accessed by A from the elements later
	 accessed by B.  But in this example, the distance returned by
	 test_dep (A, B) is lexicographically negative (-1, 1), that
	 means that the access A occurs later than B with respect to
	 the outer loop, ie. we're actually looking upwind.  In this
	 case we solve test_dep (B, A) looking downwind to the
	 lexicographically positive solution, that returns the
	 distance vector (1, -1).  */
      if (!FUNC13 (dist_v, FUNC4 (ddr)))
	{
	  lambda_vector save_v = FUNC14 (FUNC4 (ddr));
	  FUNC18 (ddr, FUNC2 (ddr), FUNC0 (ddr));
	  FUNC9 (ddr);
	  FUNC8 (ddr, FUNC2 (ddr), FUNC0 (ddr),
				       save_v, &init_b, &index_carry);
	  FUNC17 (ddr, save_v);

	  /* In this case there is a dependence forward for all the
	     outer loops:

	     | for (k = 1; k < 100; k++)
	     |  for (i = 1; i < 100; i++)
	     |   for (j = 1; j < 100; j++)
	     |     {
	     |       t = T[j+1][i-1];  // A
	     |       T[j][i] = t + 2;  // B
	     |     }

	     the vectors are: 
	     (0,  1, -1)
	     (1,  1, -1)
	     (1, -1,  1)
	  */
	  if (FUNC4 (ddr) > 1)
	    {
 	      FUNC7 (ddr, save_v, index_carry);
	      FUNC7 (ddr, dist_v, index_carry);
	    }
	}
      else
	{
	  lambda_vector save_v = FUNC14 (FUNC4 (ddr));
	  FUNC11 (dist_v, save_v, FUNC4 (ddr));
	  FUNC17 (ddr, save_v);

	  if (FUNC4 (ddr) > 1)
	    {
	      lambda_vector opposite_v = FUNC14 (FUNC4 (ddr));

	      FUNC18 (ddr, FUNC2 (ddr), FUNC0 (ddr));
	      FUNC9 (ddr);
	      FUNC8 (ddr, FUNC2 (ddr), FUNC0 (ddr),
					   opposite_v, &init_b, &index_carry);

	      FUNC7 (ddr, dist_v, index_carry);
	      FUNC7 (ddr, opposite_v, index_carry);
	    }
	}
    }
  else
    {
      /* There is a distance of 1 on all the outer loops: Example:
	 there is a dependence of distance 1 on loop_1 for the array A.

	 | loop_1
	 |   A[5] = ...
	 | endloop
      */
      FUNC7 (ddr, dist_v,
			   FUNC12 (dist_v,
						   FUNC4 (ddr), 0));
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      unsigned i;

      FUNC10 (dump_file, "(build_classic_dist_vector\n");
      for (i = 0; i < FUNC5 (ddr); i++)
	{
	  FUNC10 (dump_file, "  dist_vector = (");
	  FUNC15 (dump_file, FUNC3 (ddr, i),
			       FUNC4 (ddr));
	  FUNC10 (dump_file, "  )\n");
	}
      FUNC10 (dump_file, ")\n");
    }

  return true;
}