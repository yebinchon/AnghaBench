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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  OCD_TARGET_MOTO_PPC ; 
 int /*<<< orphan*/  bdm_ppc_ops ; 
 int /*<<< orphan*/  nowatchdog ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3 (char *name, int from_tty)
{
  CORE_ADDR watchdogaddr = 0xff000004;

  FUNC0 (name, from_tty, OCD_TARGET_MOTO_PPC, &bdm_ppc_ops);

  /* We want interrupts to drop us into debugging mode. */
  /* Modify the DER register to accomplish this. */
  FUNC1 (149, 0x20024000);

  /* Disable watchdog timer on the board */
  FUNC2 (watchdogaddr, nowatchdog, 4);
}