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
typedef  int uint16_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1(int64_t *existing, int64_t *new, size_t size)
{
	int64_t arg = *existing++;
	uint16_t levels = FUNC0(arg);
	int i;

	for (i = 0; i <= levels + 1; i++)
		existing[i] = existing[i] + new[i + 1];
}