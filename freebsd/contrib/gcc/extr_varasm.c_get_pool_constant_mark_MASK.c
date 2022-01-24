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
struct constant_descriptor_rtx {scalar_t__ mark; int /*<<< orphan*/  constant; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 struct constant_descriptor_rtx* FUNC0 (int /*<<< orphan*/ ) ; 

rtx
FUNC1 (rtx addr, bool *pmarked)
{
  struct constant_descriptor_rtx *desc;

  desc = FUNC0 (addr);
  *pmarked = (desc->mark != 0);
  return desc->constant;
}