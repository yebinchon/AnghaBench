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
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC3 (rtx x, rtx reg)
{
  rtx tmp;

  if (reg == NULL_RTX)
    reg = FUNC1 (SImode);

  tmp = FUNC2 (SImode, x);

  FUNC0 (reg, tmp);

  return reg;
}