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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PATH_MAX ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,size_t) ; 
 scalar_t__ FUNC3 (int) ; 

char *FUNC4(void **bufp, size_t *remain, size_t len)
{
	char *str;

	if (!*bufp || (len == 0) || (len > *remain))
		return FUNC0(-EINVAL);

	/* Of the currently implemented string fields, PATH_MAX
	 * defines the longest valid length.
	 */
	if (len > PATH_MAX)
		return FUNC0(-ENAMETOOLONG);

	str = FUNC1(len + 1, GFP_KERNEL);
	if (FUNC3(!str))
		return FUNC0(-ENOMEM);

	FUNC2(str, *bufp, len);
	str[len] = 0;
	*bufp += len;
	*remain -= len;

	return str;
}