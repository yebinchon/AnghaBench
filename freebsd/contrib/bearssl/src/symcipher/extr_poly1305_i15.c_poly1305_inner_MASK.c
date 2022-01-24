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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P0I ; 
 int /*<<< orphan*/  P1305 ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(uint16_t *a, const uint16_t *r, const void *data, size_t len)
{
	const unsigned char *buf;

	buf = data;
	while (len > 0) {
		unsigned char tmp[16], rev[16];
		uint16_t b[10];
		uint32_t ctl;
		int i;

		/*
		 * If there is a partial block, right-pad it with zeros.
		 */
		if (len < 16) {
			FUNC6(tmp, 0, sizeof tmp);
			FUNC5(tmp, buf, len);
			buf = tmp;
			len = 16;
		}

		/*
		 * Decode next block and apply the "high bit". Since
		 * decoding is little-endian, we must byte-swap the buffer.
		 */
		for (i = 0; i < 16; i ++) {
			rev[i] = buf[15 - i];
		}
		FUNC2(b, rev, sizeof rev, P1305);
		b[9] |= 0x0100;

		/*
		 * Add the accumulator to the decoded block (modular
		 * addition).
		 */
		ctl = FUNC1(b, a, 1);
		ctl |= FUNC0(FUNC4(b, P1305, 0));
		FUNC4(b, P1305, ctl);

		/*
		 * Multiply by r, result is the new accumulator value.
		 */
		FUNC3(a, b, r, P1305, P0I);

		buf += 16;
		len -= 16;
	}
}