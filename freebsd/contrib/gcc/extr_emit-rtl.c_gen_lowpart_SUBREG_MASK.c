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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

rtx
FUNC3 (enum machine_mode mode, rtx reg)
{
  enum machine_mode inmode;

  inmode = FUNC0 (reg);
  if (inmode == VOIDmode)
    inmode = mode;
  return FUNC1 (mode, reg,
			 FUNC2 (mode, inmode));
}