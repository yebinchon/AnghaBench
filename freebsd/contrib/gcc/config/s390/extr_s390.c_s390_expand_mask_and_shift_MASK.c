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
 int /*<<< orphan*/  AND ; 
 int /*<<< orphan*/  ASHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline rtx
FUNC3 (rtx val, enum machine_mode mode, rtx count)
{
  val = FUNC2 (SImode, AND, val, FUNC0 (FUNC1 (mode)),
			     NULL_RTX, 1, OPTAB_DIRECT);
  return FUNC2 (SImode, ASHIFT, val, count, 
			      NULL_RTX, 1, OPTAB_DIRECT);
}