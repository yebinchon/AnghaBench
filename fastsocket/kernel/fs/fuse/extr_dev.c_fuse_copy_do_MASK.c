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
struct fuse_copy_state {unsigned int len; void* buf; scalar_t__ write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct fuse_copy_state *cs, void **val, unsigned *size)
{
	unsigned ncpy = FUNC1(*size, cs->len);
	if (val) {
		if (cs->write)
			FUNC0(cs->buf, *val, ncpy);
		else
			FUNC0(*val, cs->buf, ncpy);
		*val += ncpy;
	}
	*size -= ncpy;
	cs->len -= ncpy;
	cs->buf += ncpy;
	return ncpy;
}