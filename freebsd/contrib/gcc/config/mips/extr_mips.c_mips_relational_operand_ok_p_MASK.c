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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  GE 135 
#define  GEU 134 
#define  GT 133 
#define  GTU 132 
#define  LE 131 
#define  LEU 130 
#define  LT 129 
#define  LTU 128 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (enum rtx_code code, rtx cmp1)
{
  switch (code)
    {
    case GT:
    case GTU:
      return FUNC2 (cmp1, VOIDmode);

    case GE:
    case GEU:
      return !TARGET_MIPS16 && cmp1 == const1_rtx;

    case LT:
    case LTU:
      return FUNC0 (cmp1, VOIDmode);

    case LE:
      return FUNC3 (cmp1, VOIDmode);

    case LEU:
      return FUNC4 (cmp1, VOIDmode);

    default:
      FUNC1 ();
    }
}