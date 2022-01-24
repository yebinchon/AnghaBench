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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 

__attribute__((used)) static int
FUNC2(const char *line, int *len, uint64_t *num, size_t sz, int *checksum)
{
	uint8_t b;

	*num = 0;
	for (; sz > 0; sz--) {
		if (!FUNC1(line[*len]) || !FUNC1(line[*len + 1]))
			return (-1);
		b = (FUNC0(line[*len]) << 4) | FUNC0(line[*len + 1]);
		*num = (*num << 8) | b;
		*len += 2;
		if (checksum != NULL)
			*checksum = (*checksum + b) & 0xFF;
	}

	return (0);
}