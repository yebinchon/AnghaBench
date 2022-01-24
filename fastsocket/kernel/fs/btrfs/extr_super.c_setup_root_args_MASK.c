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

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 char* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(char *args)
{
	unsigned len = FUNC3(args) + 2 + 1;
	char *src, *dst, *buf;

	/*
	 * We need the same args as before, but with this substitution:
	 * s!subvol=[^,]+!subvolid=0!
	 *
	 * Since the replacement string is up to 2 bytes longer than the
	 * original, allocate strlen(args) + 2 + 1 bytes.
	 */

	src = FUNC4(args, "subvol=");
	/* This shouldn't happen, but just in case.. */
	if (!src)
		return NULL;

	buf = dst = FUNC0(len, GFP_NOFS);
	if (!buf)
		return NULL;

	/*
	 * If the subvol= arg is not at the start of the string,
	 * copy whatever precedes it into buf.
	 */
	if (src != args) {
		*src++ = '\0';
		FUNC2(buf, args);
		dst += FUNC3(args);
	}

	FUNC2(dst, "subvolid=0");
	dst += FUNC3("subvolid=0");

	/*
	 * If there is a "," after the original subvol=... string,
	 * copy that suffix into our buffer.  Otherwise, we're done.
	 */
	src = FUNC1(src, ',');
	if (src)
		FUNC2(dst, src);

	return buf;
}