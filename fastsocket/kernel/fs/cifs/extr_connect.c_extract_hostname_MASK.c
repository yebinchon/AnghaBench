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
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static char *
FUNC4(const char *unc)
{
	const char *src;
	char *dst, *delim;
	unsigned int len;

	/* skip double chars at beginning of string */
	/* BB: check validity of these bytes? */
	src = unc + 2;

	/* delimiter between hostname and sharename is always '\\' now */
	delim = FUNC3(src, '\\');
	if (!delim)
		return FUNC0(-EINVAL);

	len = delim - src;
	dst = FUNC1((len + 1), GFP_KERNEL);
	if (dst == NULL)
		return FUNC0(-ENOMEM);

	FUNC2(dst, src, len);
	dst[len] = '\0';

	return dst;
}