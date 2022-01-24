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
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ forced_labels ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_labels ; 
 int /*<<< orphan*/  offsets_known_at ; 
 int /*<<< orphan*/  set_initial_eh_label_offset ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  rtx x;
  FUNC2 (offsets_known_at, 0, num_labels);

  for (x = forced_labels; x; x = FUNC0 (x, 1))
    if (FUNC0 (x, 0))
      FUNC3 (FUNC0 (x, 0), NULL_RTX, 1);

  FUNC1 (set_initial_eh_label_offset);
}