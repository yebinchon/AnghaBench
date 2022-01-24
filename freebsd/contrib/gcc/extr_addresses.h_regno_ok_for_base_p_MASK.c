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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC0 (unsigned int,int,int,int) ; 
 unsigned int* reg_renumber ; 

__attribute__((used)) static inline bool
FUNC1 (unsigned regno, enum machine_mode mode,
		     enum rtx_code outer_code, enum rtx_code index_code)
{
  if (regno >= FIRST_PSEUDO_REGISTER && reg_renumber[regno] >= 0)
    regno = reg_renumber[regno];

  return FUNC0 (regno, mode, outer_code, index_code);
}