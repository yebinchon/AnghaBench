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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC1 (rtx insn)
{
  rtx label = FUNC0 (insn);
  return label && label != const0_rtx;
}