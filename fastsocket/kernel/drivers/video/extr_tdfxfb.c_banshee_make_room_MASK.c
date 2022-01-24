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
struct tdfx_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct tdfx_par*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct tdfx_par *par, int size)
{
	/* Note: The Voodoo3's onboard FIFO has 32 slots. This loop
	 * won't quit if you ask for more. */
	while ((FUNC1(par, STATUS) & 0x1f) < size - 1)
		FUNC0();
}