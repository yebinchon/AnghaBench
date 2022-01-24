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
struct inferior_status {int /*<<< orphan*/  stop_registers; int /*<<< orphan*/  registers; int /*<<< orphan*/  stop_bpstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inferior_status*) ; 

void
FUNC3 (struct inferior_status *inf_status)
{
  /* See save_inferior_status for info on stop_bpstat. */
  FUNC0 (&inf_status->stop_bpstat);
  FUNC1 (inf_status->registers);
  FUNC1 (inf_status->stop_registers);
  FUNC2 (inf_status);
}