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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  DCmode 138 
#define  DDmode 137 
#define  DFmode 136 
 int /*<<< orphan*/  FIRST_FLOAT_REG ; 
 int /*<<< orphan*/  FIRST_SSE_REG ; 
#define  SCmode 135 
#define  SDmode 134 
#define  SFmode 133 
 scalar_t__ TARGET_64BIT ; 
#define  TCmode 132 
#define  TDmode 131 
#define  TFmode 130 
#define  XCmode 129 
#define  XFmode 128 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

rtx
FUNC2 (enum machine_mode mode)
{
  if (TARGET_64BIT)
    {
      switch (mode)
	{
	case SFmode:
	case SCmode:
	case DFmode:
	case DCmode:
	case TFmode:
	case SDmode:
	case DDmode:
	case TDmode:
	  return FUNC0 (mode, FIRST_SSE_REG);
	case XFmode:
	case XCmode:
	  return FUNC0 (mode, FIRST_FLOAT_REG);
	case TCmode:
	  return NULL;
	default:
	  return FUNC0 (mode, 0);
	}
    }
  else
    return FUNC0 (mode, FUNC1 (mode, NULL, NULL));
}