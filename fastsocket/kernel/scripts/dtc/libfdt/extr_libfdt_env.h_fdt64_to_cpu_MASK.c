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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static inline uint64_t FUNC1(uint64_t x)
{
	return (FUNC0(0) << 56) | (FUNC0(1) << 48) | (FUNC0(2) << 40) | (FUNC0(3) << 32)
		| (FUNC0(4) << 24) | (FUNC0(5) << 16) | (FUNC0(6) << 8) | FUNC0(7);
}