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
struct data_reference {int dummy; } ;
struct data_dependence_relation {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_dependence_undetermined; int /*<<< orphan*/  num_dependence_tests; } ;

/* Variables and functions */
 struct data_reference* FUNC0 (struct data_dependence_relation*) ; 
 scalar_t__ FUNC1 (struct data_dependence_relation*) ; 
 struct data_reference* FUNC2 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC3 (struct data_reference*) ; 
 scalar_t__ NULL_TREE ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC4 (struct data_reference*) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 TYPE_1__ dependence_stats ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct data_reference*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC6 (struct data_dependence_relation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct data_dependence_relation*) ; 

__attribute__((used)) static void
FUNC10 (struct data_dependence_relation *ddr)
{
  struct data_reference *dra = FUNC0 (ddr);
  struct data_reference *drb = FUNC2 (ddr);
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC7 (dump_file, "(compute_affine_dependence\n");
      FUNC7 (dump_file, "  (stmt_a = \n");
      FUNC8 (dump_file, FUNC3 (dra), 0);
      FUNC7 (dump_file, ")\n  (stmt_b = \n");
      FUNC8 (dump_file, FUNC3 (drb), 0);
      FUNC7 (dump_file, ")\n");
    }

  /* Analyze only when the dependence relation is not yet known.  */
  if (FUNC1 (ddr) == NULL_TREE)
    {
      dependence_stats.num_dependence_tests++;

      if (FUNC4 (dra)
	  && FUNC4 (drb))
	FUNC9 (ddr);
      
      /* As a last case, if the dependence cannot be determined, or if
	 the dependence is considered too difficult to determine, answer
	 "don't know".  */
      else
	{
	  dependence_stats.num_dependence_undetermined++;

	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC7 (dump_file, "Data ref a:\n");
	      FUNC5 (dump_file, dra);
	      FUNC7 (dump_file, "Data ref b:\n");
	      FUNC5 (dump_file, drb);
	      FUNC7 (dump_file, "affine dependence test not usable: access function not affine or constant.\n");
	    }
	  FUNC6 (ddr, chrec_dont_know);
	}
    }
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC7 (dump_file, ")\n");
}