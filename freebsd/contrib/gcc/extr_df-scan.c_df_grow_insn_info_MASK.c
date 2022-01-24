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
struct df_insn_info {int dummy; } ;
struct df {unsigned int insns_size; int /*<<< orphan*/  insns; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void 
FUNC3 (struct df *df)
{
  unsigned int new_size = FUNC0 () + 1;
  if (df->insns_size < new_size)
    {
      new_size += new_size / 4;
      df->insns = FUNC2 (df->insns, 
			    new_size *sizeof (struct df_insn_info *));
      FUNC1 (df->insns + df->insns_size, 0,
	      (new_size - df->insns_size) *sizeof (struct df_insn_info *));
      df->insns_size = new_size;
    }
}