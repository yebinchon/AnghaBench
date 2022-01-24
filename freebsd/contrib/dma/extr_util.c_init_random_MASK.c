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
typedef  int /*<<< orphan*/  seed ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 uintptr_t FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 uintptr_t FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(void)
{
	unsigned int seed;
	int rf;

	rf = FUNC2("/dev/urandom", O_RDONLY);
	if (rf == -1)
		rf = FUNC2("/dev/random", O_RDONLY);

	if (!(rf != -1 && FUNC3(rf, &seed, sizeof(seed)) == sizeof(seed)))
		seed = (FUNC5(NULL) ^ FUNC1()) + (uintptr_t)&seed;

	FUNC4(seed);

	if (rf != -1)
		FUNC0(rf);
}