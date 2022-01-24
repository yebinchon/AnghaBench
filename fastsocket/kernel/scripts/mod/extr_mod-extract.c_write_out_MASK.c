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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  csum ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (void const*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  xcsum ; 

__attribute__((used)) static void FUNC3(const void *data, size_t size)
{
	const uint8_t *p = data;
	size_t loop;

	for (loop = 0; loop < size; loop++) {
		csum += p[loop];
		xcsum += p[loop];
	}

	if (FUNC1(data, 1, size, outfd) != size) {
		FUNC2("write");
		FUNC0(1);
	}
}