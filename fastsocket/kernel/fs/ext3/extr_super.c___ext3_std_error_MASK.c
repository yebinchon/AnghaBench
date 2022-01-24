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
struct super_block {int s_flags; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int MS_RDONLY ; 
 char* FUNC0 (struct super_block*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

void FUNC4 (struct super_block * sb, const char * function,
		       int errno)
{
	char nbuf[16];
	const char *errstr;

	/* Special case: if the error is EROFS, and we're not already
	 * inside a transaction, then there's really no point in logging
	 * an error. */
	if (errno == -EROFS && FUNC3() == NULL &&
	    (sb->s_flags & MS_RDONLY))
		return;

	errstr = FUNC0(sb, errno, nbuf);
	FUNC2(sb, KERN_CRIT, "error in %s: %s", function, errstr);

	FUNC1(sb);
}