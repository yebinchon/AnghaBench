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
struct loop {int num; } ;
struct data_reference {int dummy; } ;
struct data_dependence_relation {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct data_reference* FUNC0 (struct data_dependence_relation*) ; 
 scalar_t__ FUNC1 (struct data_dependence_relation*) ; 
 struct data_reference* FUNC2 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC3 (struct data_dependence_relation*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct data_dependence_relation*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC6 (struct data_dependence_relation*) ; 
 unsigned int FUNC7 (struct data_dependence_relation*) ; 
 unsigned int FUNC8 (struct data_dependence_relation*) ; 
 unsigned int FUNC9 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC10 (struct data_dependence_relation*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct data_reference*,unsigned int) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct loop*) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ chrec_known ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  loop_p ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC18 (FILE *outf, 
			       struct data_dependence_relation *ddr)
{
  struct data_reference *dra, *drb;

  dra = FUNC0 (ddr);
  drb = FUNC2 (ddr);
  FUNC14 (outf, "(Data Dep: \n");
  if (FUNC1 (ddr) == chrec_dont_know)
    FUNC14 (outf, "    (don't know)\n");
  
  else if (FUNC1 (ddr) == chrec_known)
    FUNC14 (outf, "    (no dependence)\n");
  
  else if (FUNC1 (ddr) == NULL_TREE)
    {
      unsigned int i;
      struct loop *loopi;

      for (i = 0; i < FUNC9 (ddr); i++)
	{
	  FUNC14 (outf, "  access_fn_A: ");
	  FUNC16 (outf, FUNC11 (dra, i), 0);
	  FUNC14 (outf, "  access_fn_B: ");
	  FUNC16 (outf, FUNC11 (drb, i), 0);
	  FUNC13 (outf, FUNC10 (ddr, i));
	}

      FUNC14 (outf, "  loop nest: (");
      for (i = 0; FUNC12 (loop_p, FUNC5 (ddr), i, loopi); i++)
	FUNC14 (outf, "%d ", loopi->num);
      FUNC14 (outf, ")\n");

      for (i = 0; i < FUNC8 (ddr); i++)
	{
	  FUNC14 (outf, "  distance_vector: ");
	  FUNC17 (outf, FUNC4 (ddr, i),
			       FUNC6 (ddr));
	}

      for (i = 0; i < FUNC7 (ddr); i++)
	{
	  FUNC14 (outf, "  direction_vector: ");
	  FUNC15 (outf, FUNC3 (ddr, i),
				  FUNC6 (ddr));
	}
    }

  FUNC14 (outf, ")\n");
}