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
typedef  int u32 ;
struct cmdif {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (struct cmdif*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cmdif*,int,int) ; 
 int FUNC2 (unsigned char const*,int) ; 

__attribute__((used)) static int FUNC3(struct cmdif *cif, const unsigned char *in, u32 offset)
{
	u32 addr;
	u32 data;
	u32 i;
	const unsigned char *p;

	i = FUNC2(&in[1], 2);
	addr = offset + FUNC2(&in[3], 4);
	if (FUNC0(cif, 0, addr) != 0)
		return -EACCES;
	p = in + 9;
	while (i) {
		data = FUNC2(p, 8);
		if (FUNC1(cif, 2,
			      ((data & 0x0f0f0f0f) << 4) | ((data & 0xf0f0f0f0)
							    >> 4)))
			return -EACCES;
		i -= 4;
		p += 8;
	}
	return 0;
}