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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  snap3name ;
typedef  int /*<<< orphan*/  snap2name ;
typedef  int /*<<< orphan*/  snap1name ;
typedef  int /*<<< orphan*/  clone2name ;
typedef  int /*<<< orphan*/  clone1name ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ENOENT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(char *osname, uint64_t id)
{
	char snap1name[ZFS_MAX_DATASET_NAME_LEN];
	char clone1name[ZFS_MAX_DATASET_NAME_LEN];
	char snap2name[ZFS_MAX_DATASET_NAME_LEN];
	char clone2name[ZFS_MAX_DATASET_NAME_LEN];
	char snap3name[ZFS_MAX_DATASET_NAME_LEN];
	int error;

	(void) FUNC3(snap1name, sizeof (snap1name),
	    "%s@s1_%llu", osname, id);
	(void) FUNC3(clone1name, sizeof (clone1name),
	    "%s/c1_%llu", osname, id);
	(void) FUNC3(snap2name, sizeof (snap2name),
	    "%s@s2_%llu", clone1name, id);
	(void) FUNC3(clone2name, sizeof (clone2name),
	    "%s/c2_%llu", osname, id);
	(void) FUNC3(snap3name, sizeof (snap3name),
	    "%s@s3_%llu", clone1name, id);

	error = FUNC0(clone2name);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_head(%s) = %d", clone2name, error);
	error = FUNC1(snap3name, B_FALSE);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_snapshot(%s) = %d", snap3name, error);
	error = FUNC1(snap2name, B_FALSE);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_snapshot(%s) = %d", snap2name, error);
	error = FUNC0(clone1name);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_head(%s) = %d", clone1name, error);
	error = FUNC1(snap1name, B_FALSE);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_snapshot(%s) = %d", snap1name, error);
}