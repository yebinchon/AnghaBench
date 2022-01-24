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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__be32 *FUNC4(__be32 *p, const void *ptr, unsigned int nbytes)
{
	if (FUNC1(nbytes != 0)) {
		unsigned int quadlen = FUNC0(nbytes);
		unsigned int padding = (quadlen << 2) - nbytes;

		if (ptr != NULL)
			FUNC2(p, ptr, nbytes);
		if (padding != 0)
			FUNC3((char *)p + nbytes, 0, padding);
		p += quadlen;
	}
	return p;
}