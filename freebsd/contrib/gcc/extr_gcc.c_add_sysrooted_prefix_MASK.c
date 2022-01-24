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
struct path_prefix {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct path_prefix*,char const*,char const*,int,int,int) ; 
 char* FUNC2 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ target_sysroot_suffix ; 
 scalar_t__ target_system_root ; 

__attribute__((used)) static void
FUNC4 (struct path_prefix *pprefix, const char *prefix,
		      const char *component,
		      /* enum prefix_priority */ int priority,
		      int require_machine_suffix, int os_multilib)
{
  if (!FUNC0 (prefix))
    FUNC3 ("system path '%s' is not absolute", prefix);

  if (target_system_root)
    {
      if (target_sysroot_suffix)
	  prefix = FUNC2 (target_sysroot_suffix, prefix, NULL);
      prefix = FUNC2 (target_system_root, prefix, NULL);

      /* We have to override this because GCC's notion of sysroot
	 moves along with GCC.  */
      component = "GCC";
    }

  FUNC1 (pprefix, prefix, component, priority,
	      require_machine_suffix, os_multilib);
}