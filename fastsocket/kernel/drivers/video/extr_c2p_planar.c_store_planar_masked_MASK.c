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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 size_t* perm_c2p_32x8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline void FUNC3(void *dst, u32 dst_inc, u32 bpp,
				       u32 d[8], u32 mask)
{
	int i;

	for (i = 0; i < bpp; i++, dst += dst_inc)
		FUNC2(FUNC0(d[perm_c2p_32x8[i]],
					FUNC1(dst), mask),
				   dst);
}