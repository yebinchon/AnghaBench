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
struct TYPE_2__ {char* to_sections; int /*<<< orphan*/ * to_sections_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * core_bfd ; 
 int /*<<< orphan*/ * core_gdbarch ; 
 TYPE_1__ core_ops ; 
 int /*<<< orphan*/ * core_vec ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (int quitting)
{
  char *name;

  if (core_bfd)
    {
      inferior_ptid = null_ptid;	/* Avoid confusion from thread stuff */

      /* Clear out solib state while the bfd is still open. See
         comments in clear_solib in solib.c. */
#ifdef CLEAR_SOLIB
      CLEAR_SOLIB ();
#endif

      name = FUNC4 (core_bfd);
      if (!FUNC1 (core_bfd))
	FUNC5 ("cannot close \"%s\": %s",
		 name, FUNC2 (FUNC3 ()));
      FUNC6 (name);
      core_bfd = NULL;
      if (core_ops.to_sections)
	{
	  FUNC6 (core_ops.to_sections);
	  core_ops.to_sections = NULL;
	  core_ops.to_sections_end = NULL;
	}
    }
  core_vec = NULL;
  core_gdbarch = NULL;
}