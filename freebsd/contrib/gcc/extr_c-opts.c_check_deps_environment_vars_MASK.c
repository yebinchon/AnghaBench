#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ignore_main_file; int /*<<< orphan*/  style; } ;
struct TYPE_4__ {TYPE_1__ deps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEPS_SYSTEM ; 
 int /*<<< orphan*/  DEPS_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  OPT_MT ; 
 TYPE_2__* cpp_opts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int deps_append ; 
 char* deps_file ; 
 int deps_seen ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  char *spec;

  FUNC0 (spec, "DEPENDENCIES_OUTPUT");
  if (spec)
    cpp_opts->deps.style = DEPS_USER;
  else
    {
      FUNC0 (spec, "SUNPRO_DEPENDENCIES");
      if (spec)
	{
	  cpp_opts->deps.style = DEPS_SYSTEM;
	  cpp_opts->deps.ignore_main_file = true;
	}
    }

  if (spec)
    {
      /* Find the space before the DEPS_TARGET, if there is one.  */
      char *s = FUNC2 (spec, ' ');
      if (s)
	{
	  /* Let the caller perform MAKE quoting.  */
	  FUNC1 (OPT_MT, s + 1);
	  *s = '\0';
	}

      /* Command line -MF overrides environment variables and default.  */
      if (!deps_file)
	deps_file = spec;

      deps_append = 1;
      deps_seen = true;
    }
}