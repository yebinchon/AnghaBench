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
 int CCFPmode ; 
 int LTGT ; 
 int UNEQ ; 
 int UNGE ; 
 int UNGT ; 
 int UNLE ; 
 int UNLT ; 
 int /*<<< orphan*/  flag_finite_math_only ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

enum rtx_code
FUNC2 (enum machine_mode mode, enum rtx_code code)
{
  /* Reversal of FP compares takes care -- an ordered compare
     becomes an unordered compare and vice versa.  */
  if (mode == CCFPmode
      && (!flag_finite_math_only
	  || code == UNLT || code == UNLE || code == UNGT || code == UNGE
	  || code == UNEQ || code == LTGT))
    return FUNC1 (code);
  else
    return FUNC0 (code);
}