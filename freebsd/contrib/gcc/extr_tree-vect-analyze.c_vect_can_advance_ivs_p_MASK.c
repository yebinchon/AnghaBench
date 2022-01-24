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
struct loop {int /*<<< orphan*/  num; int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 struct loop* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ vect_reduction_def ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static bool 
FUNC15 (loop_vec_info loop_vinfo)
{
  struct loop *loop = FUNC0 (loop_vinfo);
  basic_block bb = loop->header;
  tree phi;

  /* Analyze phi functions of the loop header.  */

  if (FUNC13 (REPORT_DETAILS))
    FUNC7 (vect_dump, "=== vect_can_advance_ivs_p ===");

  for (phi = FUNC10 (bb); phi; phi = FUNC1 (phi))
    {
      tree access_fn = NULL;
      tree evolution_part;

      if (FUNC13 (REPORT_DETAILS))
	{
          FUNC7 (vect_dump, "Analyze phi: ");
          FUNC11 (vect_dump, phi, TDF_SLIM);
	}

      /* Skip virtual phi's. The data dependences that are associated with
         virtual defs/uses (i.e., memory accesses) are analyzed elsewhere.  */

      if (!FUNC9 (FUNC3 (FUNC2 (phi))))
	{
	  if (FUNC13 (REPORT_DETAILS))
	    FUNC7 (vect_dump, "virtual phi. skip.");
	  continue;
	}

      /* Skip reduction phis.  */

      if (FUNC4 (FUNC14 (phi)) == vect_reduction_def)
        {
          if (FUNC13 (REPORT_DETAILS))
            FUNC7 (vect_dump, "reduc phi. skip.");
          continue;
        }

      /* Analyze the evolution function.  */

      access_fn = FUNC8
	(loop, FUNC5 (loop, FUNC2 (phi)));

      if (!access_fn)
	{
	  if (FUNC13 (REPORT_DETAILS))
	    FUNC7 (vect_dump, "No Access function.");
	  return false;
	}

      if (FUNC13 (REPORT_DETAILS))
        {
	  FUNC7 (vect_dump, "Access function of PHI: ");
	  FUNC11 (vect_dump, access_fn, TDF_SLIM);
        }

      evolution_part = FUNC6 (access_fn, loop->num);
      
      if (evolution_part == NULL_TREE)
        {
	  if (FUNC13 (REPORT_DETAILS))
	    FUNC7 (vect_dump, "No evolution.");
	  return false;
        }
  
      /* FORNOW: We do not transform initial conditions of IVs 
	 which evolution functions are a polynomial of degree >= 2.  */

      if (FUNC12 (evolution_part))
	return false;  
    }

  return true;
}