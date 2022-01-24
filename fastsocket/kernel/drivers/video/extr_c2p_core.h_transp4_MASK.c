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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static inline void FUNC3(u32 d[], unsigned int n, unsigned int m)
{
	u32 mask = FUNC2(n);

	switch (m) {
	case 1:
		/* First n x 1 block */
		FUNC0(d, 0, 1, n, mask);
		/* Second n x 1 block */
		FUNC0(d, 2, 3, n, mask);
		return;

	case 2:
		/* Single n x 2 block */
		FUNC0(d, 0, 2, n, mask);
		FUNC0(d, 1, 3, n, mask);
		return;
	}

	FUNC1();
}