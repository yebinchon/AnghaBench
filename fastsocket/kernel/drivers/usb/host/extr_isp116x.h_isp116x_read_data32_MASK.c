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
struct isp116x {int /*<<< orphan*/  data_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp116x*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(struct isp116x *isp116x)
{
	u32 val;

	val = (u32) FUNC1(isp116x->data_reg);
	FUNC0(isp116x, 150);
	val |= ((u32) FUNC1(isp116x->data_reg)) << 16;
	FUNC0(isp116x, 150);
	return val;
}