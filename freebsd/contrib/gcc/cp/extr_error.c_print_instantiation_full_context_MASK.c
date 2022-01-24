#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
struct TYPE_4__ {int /*<<< orphan*/  printer; } ;
typedef  TYPE_1__ diagnostic_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_RETURN_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (diagnostic_context *context)
{
  tree p = FUNC4 ();
  location_t location = input_location;

  if (p)
    {
      if (current_function_decl != FUNC1 (p)
	  && current_function_decl != NULL_TREE)
	/* We can get here during the processing of some synthesized
	   method.  Then, TINST_DECL (p) will be the function that's causing
	   the synthesis.  */
	;
      else
	{
	  if (current_function_decl == FUNC1 (p))
	    /* Avoid redundancy with the "In function" line.  */;
	  else
	    FUNC6 (context->printer,
			 "%s: In instantiation of %qs:\n",
			 FUNC0 (location),
			 FUNC5 (FUNC1 (p),
					 TFF_DECL_SPECIFIERS | TFF_RETURN_TYPE));

	  location = FUNC2 (p);
	  p = FUNC3 (p);
	}
    }

  FUNC7 (context, p, location);
}