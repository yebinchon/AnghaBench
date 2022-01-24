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
typedef  int catch_fork_kind ;

/* Variables and functions */
#define  catch_fork 129 
#define  catch_vfork 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 

__attribute__((used)) static void
FUNC6 (catch_fork_kind fork_kind, char *arg, int tempflag,
		      int from_tty)
{
  char *cond_string = NULL;

  FUNC3 (&arg);

  /* The allowed syntax is:
     catch [v]fork
     catch [v]fork if <cond>

     First, check if there's an if clause. */
  cond_string = FUNC2 (&arg);

  if ((*arg != '\0') && !FUNC5 (*arg))
    FUNC4 ("Junk at end of arguments.");

  /* If this target supports it, create a fork or vfork catchpoint
     and enable reporting of such events. */
  switch (fork_kind)
    {
    case catch_fork:
      FUNC0 (tempflag, cond_string);
      break;
    case catch_vfork:
      FUNC1 (tempflag, cond_string);
      break;
    default:
      FUNC4 ("unsupported or unknown fork kind; cannot catch it");
      break;
    }
}