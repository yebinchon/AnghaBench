#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ diagnostic_info ;
struct TYPE_7__ {int lock; int /*<<< orphan*/  printer; } ;
typedef  TYPE_2__ diagnostic_context ;

/* Variables and functions */
 int /*<<< orphan*/  DK_ICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4 (diagnostic_context *context)
{
  diagnostic_info diagnostic;

  if (context->lock < 3)
    FUNC2 (context->printer);

  FUNC1 (stderr,
	   "Internal compiler error: Error reporting routines re-entered.\n");

  /* Call diagnostic_action_after_output to get the "please submit a bug
     report" message.  It only looks at the kind field of diagnostic_info.  */
  diagnostic.kind = DK_ICE;
  FUNC0 (context, &diagnostic);

  /* Do not use gcc_unreachable here; that goes through internal_error
     and therefore would cause infinite recursion.  */
  FUNC3 ();
}