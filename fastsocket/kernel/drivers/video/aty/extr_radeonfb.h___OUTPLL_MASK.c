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
struct radeonfb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  CLOCK_CNTL_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeonfb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeonfb_info*) ; 

__attribute__((used)) static inline void FUNC4(struct radeonfb_info *rinfo, unsigned int index,
			    u32 val)
{

	FUNC1(CLOCK_CNTL_INDEX, (index & 0x0000003f) | 0x00000080);
	FUNC3(rinfo);
	FUNC0(CLOCK_CNTL_DATA, val);
	FUNC2(rinfo);
}