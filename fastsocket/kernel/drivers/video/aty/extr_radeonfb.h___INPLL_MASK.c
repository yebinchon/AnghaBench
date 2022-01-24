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
struct radeonfb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  CLOCK_CNTL_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeonfb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeonfb_info*) ; 

__attribute__((used)) static inline u32 FUNC4(struct radeonfb_info *rinfo, u32 addr)
{
	u32 data;

	FUNC1(CLOCK_CNTL_INDEX, addr & 0x0000003f);
	FUNC3(rinfo);
	data = FUNC0(CLOCK_CNTL_DATA);
	FUNC2(rinfo);
	return data;
}