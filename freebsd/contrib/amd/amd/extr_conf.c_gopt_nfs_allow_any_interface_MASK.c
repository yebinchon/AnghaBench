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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFM_NFS_ANY_INTERFACE ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC2(const char *val)
{
  if (FUNC0(val, "yes")) {
    gopt.flags |= CFM_NFS_ANY_INTERFACE;
    return 0;
  } else if (FUNC0(val, "no")) {
    gopt.flags &= ~CFM_NFS_ANY_INTERFACE;
    return 0;
  }

  FUNC1(stderr, "conf: unknown value to nfs_allow_insecure_port \"%s\"\n", val);
  return 1;			/* unknown value */
}