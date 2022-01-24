#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int truncated_to_mode; scalar_t__ truncation_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ label_tick ; 
 TYPE_1__* reg_stat ; 

__attribute__((used)) static bool
FUNC4 (enum machine_mode mode, rtx x)
{
  enum machine_mode truncated = reg_stat[FUNC2 (x)].truncated_to_mode;

  if (truncated == 0 || reg_stat[FUNC2 (x)].truncation_label != label_tick)
    return false;
  if (FUNC1 (truncated) <= FUNC1 (mode))
    return true;
  if (FUNC3 (FUNC0 (mode),
			     FUNC0 (truncated)))
    return true;
  return false;
}