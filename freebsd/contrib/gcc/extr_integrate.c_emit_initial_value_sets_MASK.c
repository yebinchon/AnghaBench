#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct initial_value_struct {int num_entries; TYPE_1__* entries; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {struct initial_value_struct* hard_reg_initial_vals; } ;
struct TYPE_3__ {int /*<<< orphan*/  hard_reg; int /*<<< orphan*/  pseudo; } ;

/* Variables and functions */
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

unsigned int
FUNC5 (void)
{
  struct initial_value_struct *ivs = cfun->hard_reg_initial_vals;
  int i;
  rtx seq;

  if (ivs == 0)
    return 0;

  FUNC4 ();
  for (i = 0; i < ivs->num_entries; i++)
    FUNC1 (ivs->entries[i].pseudo, ivs->entries[i].hard_reg);
  seq = FUNC3 ();
  FUNC2 ();

  FUNC0 (seq);
  return 0;
}