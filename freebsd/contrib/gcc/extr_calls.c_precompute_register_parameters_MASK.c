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
struct arg_data {scalar_t__ reg; scalar_t__ value; scalar_t__ mode; int /*<<< orphan*/  parallel_value; int /*<<< orphan*/  tree_value; int /*<<< orphan*/  unsignedp; int /*<<< orphan*/  pass_on_stack; } ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SET ; 
 scalar_t__ SMALL_REGISTER_CLASSES ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18 (int num_actuals, struct arg_data *args,
				int *reg_parm_seen)
{
  int i;

  *reg_parm_seen = 0;

  for (i = 0; i < num_actuals; i++)
    if (args[i].reg != 0 && ! args[i].pass_on_stack)
      {
	*reg_parm_seen = 1;

	if (args[i].value == 0)
	  {
	    FUNC16 ();
	    args[i].value = FUNC11 (args[i].tree_value);
	    FUNC15 (args[i].value);
	    FUNC14 ();
	  }

	/* If the value is a non-legitimate constant, force it into a
	   pseudo now.  TLS symbols sometimes need a call to resolve.  */
	if (FUNC0 (args[i].value)
	    && !FUNC3 (args[i].value))
	  args[i].value = FUNC12 (args[i].mode, args[i].value);

	/* If we are to promote the function arg to a wider mode,
	   do it now.  */

	if (args[i].mode != FUNC7 (FUNC6 (args[i].tree_value)))
	  args[i].value
	    = FUNC8 (args[i].mode,
			     FUNC7 (FUNC6 (args[i].tree_value)),
			     args[i].value, args[i].unsignedp);

	/* If we're going to have to load the value by parts, pull the
	   parts into pseudos.  The part extraction process can involve
	   non-trivial computation.  */
	if (FUNC2 (args[i].reg) == PARALLEL)
	  {
	    tree type = FUNC6 (args[i].tree_value);
	    args[i].parallel_value
	      = FUNC10 (args[i].reg, args[i].value,
					    type, FUNC13 (type));
	  }

	/* If the value is expensive, and we are inside an appropriately
	   short loop, put the value into a pseudo and then put the pseudo
	   into the hard reg.

	   For small register classes, also do this if this call uses
	   register parameters.  This is to avoid reload conflicts while
	   loading the parameters registers.  */

	else if ((! (FUNC4 (args[i].value)
		     || (FUNC2 (args[i].value) == SUBREG
			 && FUNC4 (FUNC5 (args[i].value)))))
		 && args[i].mode != BLKmode
		 && FUNC17 (args[i].value, SET) > FUNC1 (1)
		 && ((SMALL_REGISTER_CLASSES && *reg_parm_seen)
		     || optimize))
	  args[i].value = FUNC9 (args[i].mode, args[i].value);
      }
}