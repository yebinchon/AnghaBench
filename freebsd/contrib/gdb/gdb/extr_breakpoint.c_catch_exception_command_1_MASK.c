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
struct symtab_and_line {int dummy; } ;
typedef  enum exception_event_kind { ____Placeholder_exception_event_kind } exception_event_kind ;

/* Variables and functions */
 int EX_EVENT_CATCH ; 
 int EX_EVENT_THROW ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,struct symtab_and_line*) ; 
 char* FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 struct symtab_and_line* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (enum exception_event_kind ex_event, char *arg,
			   int tempflag, int from_tty)
{
  char *cond_string = NULL;
  struct symtab_and_line *sal = NULL;

  FUNC2 (&arg);

  cond_string = FUNC1 (&arg);

  if ((*arg != '\0') && !FUNC5 (*arg))
    FUNC3 ("Junk at end of arguments.");

  if ((ex_event != EX_EVENT_THROW) &&
      (ex_event != EX_EVENT_CATCH))
    FUNC3 ("Unsupported or unknown exception event; cannot catch it");

  if (FUNC4 (tempflag, cond_string, ex_event, from_tty))
    return;

  /* See if we can find a callback routine */
  sal = FUNC6 (ex_event, 1);

  if (sal)
    {
      /* We have callbacks from the runtime system for exceptions.
         Set a breakpoint on the sal found, if no errors */
      if (sal != (struct symtab_and_line *) -1)
	FUNC0 (tempflag, cond_string, ex_event, sal);
      else
	return;		/* something went wrong with setting up callbacks */
    }

  FUNC7 ("Unsupported with this platform/compiler combination.");
}