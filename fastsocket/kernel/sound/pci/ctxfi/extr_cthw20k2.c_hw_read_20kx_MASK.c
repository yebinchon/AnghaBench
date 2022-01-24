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
typedef  scalar_t__ u32 ;
struct hw {scalar_t__ mem_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 

__attribute__((used)) static u32 FUNC1(struct hw *hw, u32 reg)
{
	return FUNC0((void *)(hw->mem_base + reg));
}