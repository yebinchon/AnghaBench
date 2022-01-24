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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* install_partition ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 char const* null ; 

__attribute__((used)) static void
FUNC5(const char *source_path)
{
#ifndef	DEBUG_THIS
    FILE *f;
#endif

    if (FUNC4("mkdir -p /install/var/installed/packages %s", null))
	return;
    if (FUNC4("cd /install; for i in /source%s/*.tgz; do "
		  "tar xzplvvkf $i >> var/installed/packages/base "
		  "2>>var/installed/packages/ERROR; done", source_path))
	return;
#ifndef	DEBUG_THIS
    if ((f = FUNC2("/install/etc/fstab", "w")) == NULL) {
	/* i = */ FUNC0("Error", "Cannot write /etc/fstab",
				12, 40, 1);
	return;
    }
    FUNC3(f, "%s / ext2 defaults 1 1\n", install_partition);
    FUNC3(f, "none /proc proc defaults 0 2\n");
    /* XXX write swap-partitions */
    FUNC1(f);
#endif
}