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
 int PCM_ENABLE_INPUT ; 
 int PCM_ENABLE_OUTPUT ; 
 int open_mode ; 
 int /*<<< orphan*/  pas_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(int dev, int state)
{
	unsigned long   flags;

	FUNC2(&pas_lock, flags);
	state &= open_mode;

	if (state & PCM_ENABLE_OUTPUT)
		FUNC1(FUNC0(0xF8A) | 0x40 | 0x10, 0xF8A);
	else if (state & PCM_ENABLE_INPUT)
		FUNC1((FUNC0(0xF8A) | 0x40) & ~0x10, 0xF8A);
	else
		FUNC1(FUNC0(0xF8A) & ~0x40, 0xF8A);

	FUNC3(&pas_lock, flags);
}