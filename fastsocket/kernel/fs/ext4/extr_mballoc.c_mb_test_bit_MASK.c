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
 int FUNC0 (int,void*) ; 
 void* FUNC1 (int*,void*) ; 

__attribute__((used)) static inline int FUNC2(int bit, void *addr)
{
	/*
	 * ext4_test_bit on architecture like powerpc
	 * needs unsigned long aligned address
	 */
	addr = FUNC1(&bit, addr);
	return FUNC0(bit, addr);
}