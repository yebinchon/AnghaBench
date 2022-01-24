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
struct TYPE_2__ {int /*<<< orphan*/  num_subscript_undetermined; int /*<<< orphan*/  num_same_subscript_function; int /*<<< orphan*/  num_subscript_tests; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 TYPE_1__ dependence_stats ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void 
FUNC11 (tree chrec_a, 
				tree chrec_b, 
				tree *overlap_iterations_a, 
				tree *overlap_iterations_b, 
				tree *last_conflicts)
{
  dependence_stats.num_subscript_tests++;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "(analyze_overlapping_iterations \n");
      FUNC7 (dump_file, "  (chrec_a = ");
      FUNC8 (dump_file, chrec_a, 0);
      FUNC7 (dump_file, ")\n  (chrec_b = ");
      FUNC8 (dump_file, chrec_b, 0);
      FUNC7 (dump_file, ")\n");
    }

  if (chrec_a == NULL_TREE
      || chrec_b == NULL_TREE
      || FUNC4 (chrec_a)
      || FUNC4 (chrec_b))
    {
      dependence_stats.num_subscript_undetermined++;
      
      *overlap_iterations_a = chrec_dont_know;
      *overlap_iterations_b = chrec_dont_know;
    }

  /* If they are the same chrec, and are affine, they overlap 
     on every iteration.  */
  else if (FUNC5 (chrec_a, chrec_b)
	   && FUNC6 (chrec_a))
    {
      dependence_stats.num_same_subscript_function++;
      *overlap_iterations_a = integer_zero_node;
      *overlap_iterations_b = integer_zero_node;
      *last_conflicts = chrec_dont_know;
    }

  /* If they aren't the same, and aren't affine, we can't do anything
     yet. */
  else if ((FUNC3 (chrec_a) 
	    || FUNC3 (chrec_b))
	   && (!FUNC6 (chrec_a)
	       || !FUNC6 (chrec_b)))
    {
      dependence_stats.num_subscript_undetermined++;
      *overlap_iterations_a = chrec_dont_know;
      *overlap_iterations_b = chrec_dont_know;
    }

  else if (FUNC10 (chrec_a, chrec_b))
    FUNC2 (chrec_a, chrec_b, 
			   overlap_iterations_a, overlap_iterations_b,
			   last_conflicts);
  
  else if (FUNC9 (chrec_a, chrec_b))
    FUNC1 (chrec_a, chrec_b, 
			   overlap_iterations_a, overlap_iterations_b, 
			   last_conflicts);
  
  else
    FUNC0 (chrec_a, chrec_b, 
			   overlap_iterations_a, overlap_iterations_b,
			   last_conflicts);
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "  (overlap_iterations_a = ");
      FUNC8 (dump_file, *overlap_iterations_a, 0);
      FUNC7 (dump_file, ")\n  (overlap_iterations_b = ");
      FUNC8 (dump_file, *overlap_iterations_b, 0);
      FUNC7 (dump_file, ")\n");
      FUNC7 (dump_file, ")\n");
    }
}