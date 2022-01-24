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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int,scalar_t__,int) ; 

__attribute__((used)) static rtx
FUNC5 (rtx x, enum rtx_code code, enum machine_mode result_mode,
		      rtx varop, int count)
{
  rtx tem = FUNC4 (code, result_mode, varop, count);
  if (tem)
    return tem;

  if (!x)
    x = FUNC3 (code, FUNC1 (varop), varop, FUNC0 (count));
  if (FUNC1 (x) != result_mode)
    x = FUNC2 (result_mode, x);
  return x;
}