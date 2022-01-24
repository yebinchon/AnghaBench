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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC2 (struct nlattr const*) ; 
 size_t FUNC3 (struct nlattr const*) ; 

size_t FUNC4(char *dst, const struct nlattr *nla, size_t dstsize)
{
	size_t srclen = FUNC3(nla);
	char *src = FUNC2(nla);

	if (srclen > 0 && src[srclen - 1] == '\0')
		srclen--;

	if (dstsize > 0) {
		size_t len = (srclen >= dstsize) ? dstsize - 1 : srclen;

		FUNC1(dst, 0, dstsize);
		FUNC0(dst, src, len);
	}

	return srclen;
}