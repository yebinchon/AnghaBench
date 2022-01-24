#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct frame_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stack_addr; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 TYPE_1__ FUNC0 (struct frame_info*) ; 

CORE_ADDR
FUNC1 (struct frame_info *fi)
{
  return FUNC0 (fi).stack_addr;
}