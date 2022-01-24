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
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const*,size_t) ; 

__attribute__((used)) static int
FUNC1(const unsigned char *b1, size_t b1_len,
	const unsigned char *b2, size_t b2_len)
{
	while (b1_len > 0 && *b1 == 0) {
		b1 ++;
		b1_len --;
	}
	while (b2_len > 0 && *b2 == 0) {
		b2 ++;
		b2_len --;
	}
	return b1_len == b2_len && FUNC0(b1, b2, b1_len) == 0;
}