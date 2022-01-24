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
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(const char *treename)
{
	const char *src;
	char *delim, *dst;
	int len;

	/* skip double chars at the beginning */
	src = treename + 2;

	/* share name is always preceded by '\\' now */
	delim = FUNC2(src, '\\');
	if (!delim)
		return FUNC0(-EINVAL);
	delim++;
	len = FUNC3(delim);

	/* caller has to free the memory */
	dst = FUNC1(delim, len, GFP_KERNEL);
	if (!dst)
		return FUNC0(-ENOMEM);

	return dst;
}