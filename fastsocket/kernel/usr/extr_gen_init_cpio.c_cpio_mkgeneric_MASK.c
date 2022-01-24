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
typedef  scalar_t__ uid_t ;
typedef  scalar_t__ time_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ino ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ,unsigned int,long,long,int,long,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *name, unsigned int mode,
		       uid_t uid, gid_t gid)
{
	char s[256];
	time_t mtime = FUNC4(NULL);

	FUNC2(s,"%s%08X%08X%08lX%08lX%08X%08lX"
	       "%08X%08X%08X%08X%08X%08X%08X",
		"070701",		/* magic */
		ino++,			/* ino */
		mode,			/* mode */
		(long) uid,		/* uid */
		(long) gid,		/* gid */
		2,			/* nlink */
		(long) mtime,		/* mtime */
		0,			/* filesize */
		3,			/* major */
		1,			/* minor */
		0,			/* rmajor */
		0,			/* rminor */
		(unsigned)FUNC3(name) + 1,/* namesize */
		0);			/* chksum */
	FUNC0(s);
	FUNC1(name);
	return 0;
}