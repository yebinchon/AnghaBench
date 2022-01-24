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
struct amixer_rsc_ctrl_blk {int /*<<< orphan*/  amoplo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPLO_Y ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *blk)
{
	struct amixer_rsc_ctrl_blk *ctl = blk;

	return FUNC0(ctl->amoplo, AMOPLO_Y);
}