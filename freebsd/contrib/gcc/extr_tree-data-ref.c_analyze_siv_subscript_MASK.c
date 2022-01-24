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
struct TYPE_2__ {int /*<<< orphan*/  num_siv_unimplemented; int /*<<< orphan*/  num_siv_dependent; int /*<<< orphan*/  num_siv_independent; int /*<<< orphan*/  num_siv; } ;

/* Variables and functions */
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ chrec_known ; 
 TYPE_1__ dependence_stats ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 

__attribute__((used)) static void
FUNC7 (tree chrec_a, 
		       tree chrec_b,
		       tree *overlaps_a, 
		       tree *overlaps_b, 
		       tree *last_conflicts)
{
  dependence_stats.num_siv++;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC6 (dump_file, "(analyze_siv_subscript \n");
  
  if (FUNC5 (chrec_a)
      && FUNC4 (chrec_b))
    FUNC0 (chrec_a, chrec_b, 
				      overlaps_a, overlaps_b, last_conflicts);
  
  else if (FUNC4 (chrec_a)
	   && FUNC5 (chrec_b))
    FUNC0 (chrec_b, chrec_a, 
				      overlaps_b, overlaps_a, last_conflicts);
  
  else if (FUNC4 (chrec_a)
	   && FUNC4 (chrec_b))
    {
      if (!FUNC3 (chrec_a)
	  && !FUNC3 (chrec_b))
	{
	  FUNC1 (chrec_a, chrec_b, 
					   overlaps_a, overlaps_b, 
					   last_conflicts);

	  if (*overlaps_a == chrec_dont_know
	      || *overlaps_b == chrec_dont_know)
	    dependence_stats.num_siv_unimplemented++;
	  else if (*overlaps_a == chrec_known
		   || *overlaps_b == chrec_known)
	    dependence_stats.num_siv_independent++;
	  else
	    dependence_stats.num_siv_dependent++;
	}
      else if (FUNC2 (&chrec_a, 
							&chrec_b))
	{
	  FUNC1 (chrec_a, chrec_b, 
					   overlaps_a, overlaps_b, 
					   last_conflicts);
	  /* FIXME: The number of iterations is a symbolic expression.
	     Compute it properly.  */
	  *last_conflicts = chrec_dont_know;

	  if (*overlaps_a == chrec_dont_know
	      || *overlaps_b == chrec_dont_know)
	    dependence_stats.num_siv_unimplemented++;
	  else if (*overlaps_a == chrec_known
		   || *overlaps_b == chrec_known)
	    dependence_stats.num_siv_independent++;
	  else
	    dependence_stats.num_siv_dependent++;
	}
      else
	goto siv_subscript_dontknow;
    }

  else
    {
    siv_subscript_dontknow:;
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC6 (dump_file, "siv test failed: unimplemented.\n");
      *overlaps_a = chrec_dont_know;
      *overlaps_b = chrec_dont_know;
      *last_conflicts = chrec_dont_know;
      dependence_stats.num_siv_unimplemented++;
    }
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC6 (dump_file, ")\n");
}