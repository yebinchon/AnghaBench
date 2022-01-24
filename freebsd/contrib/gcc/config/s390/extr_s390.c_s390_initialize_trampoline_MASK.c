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

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4 (rtx addr, rtx fnaddr, rtx cxt)
{
  FUNC0 (FUNC1 (Pmode,
		   FUNC2 (Pmode,
		   FUNC3 (addr, (TARGET_64BIT ? 16 : 8)))), cxt);
  FUNC0 (FUNC1 (Pmode,
		   FUNC2 (Pmode,
		   FUNC3 (addr, (TARGET_64BIT ? 24 : 12)))), fnaddr);
}