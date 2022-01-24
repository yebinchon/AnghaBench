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
typedef  int uint32_t ;
struct rubin_state {int /*<<< orphan*/  pp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rubin_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rubin_state*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rubin_state*,unsigned char) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int bit_divider, int *bits, unsigned char *data_in,
			     unsigned char *cpage_out, uint32_t *sourcelen,
			     uint32_t *dstlen)
	{
	int outpos = 0;
	int pos=0;
	struct rubin_state rs;

	FUNC1(&rs.pp, cpage_out, *dstlen * 8, 0, 32);

	FUNC2(&rs, bit_divider, bits);

	while (pos < (*sourcelen) && !FUNC3(&rs, data_in[pos]))
		pos++;

	FUNC0(&rs);

	if (outpos > pos) {
		/* We failed */
		return -1;
	}

	/* Tell the caller how much we managed to compress,
	 * and how much space it took */

	outpos = (FUNC4(&rs.pp)+7)/8;

	if (outpos >= pos)
		return -1; /* We didn't actually compress */
	*sourcelen = pos;
	*dstlen = outpos;
	return 0;
}