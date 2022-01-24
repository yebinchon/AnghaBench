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
typedef  scalar_t__ u64 ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ io_tlb_end ; 
 scalar_t__ FUNC0 (struct device*,scalar_t__) ; 

int
FUNC1(struct device *hwdev, u64 mask)
{
	return FUNC0(hwdev, io_tlb_end - 1) <= mask;
}