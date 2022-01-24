#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/  num_miv_unimplemented; int /*<<< orphan*/  num_miv_dependent; int /*<<< orphan*/  num_miv_independent; int /*<<< orphan*/  num_miv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ chrec_known ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int*) ; 
 TYPE_1__ dependence_stats ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ integer_zero_node ; 

__attribute__((used)) static void
FUNC11 (tree chrec_a, 
		       tree chrec_b, 
		       tree *overlaps_a, 
		       tree *overlaps_b, 
		       tree *last_conflicts)
{
  /* FIXME:  This is a MIV subscript, not yet handled.
     Example: (A[{1, +, 1}_1] vs. A[{1, +, 1}_2]) that comes from 
     (A[i] vs. A[j]).  
     
     In the SIV test we had to solve a Diophantine equation with two
     variables.  In the MIV case we have to solve a Diophantine
     equation with 2*n variables (if the subscript uses n IVs).
  */
  bool divide_p = true;
  tree difference;
  dependence_stats.num_miv++;
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC9 (dump_file, "(analyze_miv_subscript \n");

  chrec_a = FUNC3 (integer_type_node, chrec_a, NULL_TREE);
  chrec_b = FUNC3 (integer_type_node, chrec_b, NULL_TREE);
  difference = FUNC4 (integer_type_node, chrec_a, chrec_b);
  
  if (FUNC6 (chrec_a, chrec_b))
    {
      /* Access functions are the same: all the elements are accessed
	 in the same order.  */
      *overlaps_a = integer_zero_node;
      *overlaps_b = integer_zero_node;
      *last_conflicts = FUNC10 (FUNC0 (chrec_a));
      dependence_stats.num_miv_dependent++;
    }
  
  else if (FUNC8 (difference)
	   /* For the moment, the following is verified:
	      evolution_function_is_affine_multivariate_p (chrec_a) */
	   && FUNC5 (chrec_a, difference, &divide_p)
	   && !divide_p)
    {
      /* testsuite/.../ssa-chrec-33.c
	 {{21, +, 2}_1, +, -2}_2  vs.  {{20, +, 2}_1, +, -2}_2 
	 
	 The difference is 1, and the evolution steps are equal to 2,
	 consequently there are no overlapping elements.  */
      *overlaps_a = chrec_known;
      *overlaps_b = chrec_known;
      *last_conflicts = integer_zero_node;
      dependence_stats.num_miv_independent++;
    }
  
  else if (FUNC7 (chrec_a)
	   && !FUNC2 (chrec_a)
	   && FUNC7 (chrec_b)
	   && !FUNC2 (chrec_b))
    {
      /* testsuite/.../ssa-chrec-35.c
	 {0, +, 1}_2  vs.  {0, +, 1}_3
	 the overlapping elements are respectively located at iterations:
	 {0, +, 1}_x and {0, +, 1}_x, 
	 in other words, we have the equality: 
	 {0, +, 1}_2 ({0, +, 1}_x) = {0, +, 1}_3 ({0, +, 1}_x)
	 
	 Other examples: 
	 {{0, +, 1}_1, +, 2}_2 ({0, +, 1}_x, {0, +, 1}_y) = 
	 {0, +, 1}_1 ({{0, +, 1}_x, +, 2}_y)

	 {{0, +, 2}_1, +, 3}_2 ({0, +, 1}_y, {0, +, 1}_x) = 
	 {{0, +, 3}_1, +, 2}_2 ({0, +, 1}_x, {0, +, 1}_y)
      */
      FUNC1 (chrec_a, chrec_b, 
				       overlaps_a, overlaps_b, last_conflicts);

      if (*overlaps_a == chrec_dont_know
	  || *overlaps_b == chrec_dont_know)
	dependence_stats.num_miv_unimplemented++;
      else if (*overlaps_a == chrec_known
	       || *overlaps_b == chrec_known)
	dependence_stats.num_miv_independent++;
      else
	dependence_stats.num_miv_dependent++;
    }
  
  else
    {
      /* When the analysis is too difficult, answer "don't know".  */
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC9 (dump_file, "analyze_miv_subscript test failed: unimplemented.\n");

      *overlaps_a = chrec_dont_know;
      *overlaps_b = chrec_dont_know;
      *last_conflicts = chrec_dont_know;
      dependence_stats.num_miv_unimplemented++;
    }
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC9 (dump_file, ")\n");
}