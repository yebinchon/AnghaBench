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
struct frame_info {int /*<<< orphan*/ * saved_regs; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  SIZEOF_FRAME_SAVED_REGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

CORE_ADDR *
FUNC1 (struct frame_info *fi)
{
  fi->saved_regs = (CORE_ADDR *)
    FUNC0 (SIZEOF_FRAME_SAVED_REGS);
  return fi->saved_regs;
}