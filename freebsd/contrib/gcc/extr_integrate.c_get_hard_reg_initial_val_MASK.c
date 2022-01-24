#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct initial_value_struct {int num_entries; int max_entries; TYPE_1__* entries; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  initial_value_struct ;
typedef  int /*<<< orphan*/  initial_value_pair ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {struct initial_value_struct* hard_reg_initial_vals; } ;
struct TYPE_4__ {scalar_t__ pseudo; int /*<<< orphan*/  hard_reg; } ;

/* Variables and functions */
 TYPE_3__* cfun ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 void* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int,unsigned int) ; 

rtx
FUNC5 (enum machine_mode mode, unsigned int regno)
{
  struct initial_value_struct *ivs;
  rtx rv;

  rv = FUNC4 (mode, regno);
  if (rv)
    return rv;

  ivs = cfun->hard_reg_initial_vals;
  if (ivs == 0)
    {
      ivs = FUNC2 (sizeof (initial_value_struct));
      ivs->num_entries = 0;
      ivs->max_entries = 5;
      ivs->entries = FUNC2 (5 * sizeof (initial_value_pair));
      cfun->hard_reg_initial_vals = ivs;
    }

  if (ivs->num_entries >= ivs->max_entries)
    {
      ivs->max_entries += 5;
      ivs->entries = FUNC3 (ivs->entries,
				  ivs->max_entries
				  * sizeof (initial_value_pair));
    }

  ivs->entries[ivs->num_entries].hard_reg = FUNC1 (mode, regno);
  ivs->entries[ivs->num_entries].pseudo = FUNC0 (mode);

  return ivs->entries[ivs->num_entries++].pseudo;
}