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
typedef  int /*<<< orphan*/  vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  MIX_DEFIGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(vortex_t * vortex, int en, unsigned char mixin,
			    unsigned char mix, int a)
{
	if (en) {
		FUNC1(vortex, mix, mixin);
		FUNC2(vortex, mix, mixin, MIX_DEFIGAIN);	// added to original code.
	} else
		FUNC0(vortex, mix, mixin, a);
}