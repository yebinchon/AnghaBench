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
struct utsname {int /*<<< orphan*/  release; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFM_FORCED_UNMOUNTS ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct utsname*) ; 

__attribute__((used)) static int
FUNC4(const char *val)
{
  if (FUNC0(val, "yes")) {
#if !defined(MNT2_GEN_OPT_DETACH) && !defined(MNT2_GEN_OPT_FORCE)
    FUNC1(stderr, "conf: forced_unmounts unsupported on this system.\n");
    return 1;
#else /* defined(MNT2_GEN_OPT_DETACH) || defined(MNT2_GEN_OPT_FORCE) */
# ifdef __linux__
    /*
     * HACK ALERT: Linux has had MNT_FORCE since 2.2, but it hasn't gotten
     * stable until 2.4.  And it had MNT_DETACH since 2.4, but it hasn't
     * gotten stable since 2.6.  So alert users if they're trying to use a
     * feature that may not work well on their older kernel.
     */
    {
      struct utsname un;
      if (uname(&un) >= 0) {
#  ifdef MNT2_GEN_OPT_FORCE
	if (strcmp(un.release, "2.4.0") < 0)
	  fprintf(stderr, "warning: forced-unmounts (MNT_FORCE) may not work well before 2.4.0\n");
#  endif /* MNT2_GEN_OPT_FORCE */
#  ifdef MNT2_GEN_OPT_DETACH
	if (strcmp(un.release, "2.6.0") < 0)
	  fprintf(stderr, "warning: lazy-unmounts (MNT_DETACH) may not work well before 2.6.0\n");
#  endif /* MNT2_GEN_OPT_DETACH */
      }
    }
# endif /* __linux__ */
    gopt.flags |= CFM_FORCED_UNMOUNTS;
    return 0;
#endif /* defined(MNT2_GEN_OPT_DETACH) || defined(MNT2_GEN_OPT_FORCE) */
  } else if (FUNC0(val, "no")) {
    gopt.flags &= ~CFM_FORCED_UNMOUNTS;
    return 0;
  }

  FUNC1(stderr, "conf: unknown value to unmount_on_exit \"%s\"\n", val);
  return 1;			/* unknown value */
}