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
typedef  int /*<<< orphan*/  u8 ;
struct isp1301 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1301_INTERRUPT_LATCH ; 
 int /*<<< orphan*/  FUNC0 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC2(struct isp1301 *isp)
{
	u8 latch = FUNC1(isp, ISP1301_INTERRUPT_LATCH);
	FUNC0(isp, ISP1301_INTERRUPT_LATCH, latch);
	return latch;
}