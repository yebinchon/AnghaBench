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
typedef  int uint8_t ;
typedef  size_t uint64_t ;

/* Variables and functions */
 char FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(char *line, int *len, uint64_t num, size_t sz, int *checksum)
{
	uint8_t b;

	for (; sz > 0; sz--) {
		b = (num >> ((sz - 1) * 8)) & 0xFF;
		line[*len] = FUNC0((b >> 4) & 0xF);
		line[*len + 1] = FUNC0(b & 0xF);
		*len += 2;
		if (checksum != NULL)
			*checksum = (*checksum + b) & 0xFF;
	}
}