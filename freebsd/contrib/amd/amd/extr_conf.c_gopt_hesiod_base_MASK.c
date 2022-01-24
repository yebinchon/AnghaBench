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
struct TYPE_2__ {int /*<<< orphan*/  hesiod_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char *val)
{
#ifdef HAVE_MAP_HESIOD
  gopt.hesiod_base = xstrdup(val);
  return 0;
#else /* not HAVE_MAP_HESIOD */
  FUNC0(stderr, "conf: hesiod_base option ignored.  No Hesiod support available.\n");
  return 1;
#endif /* not HAVE_MAP_HESIOD */
}