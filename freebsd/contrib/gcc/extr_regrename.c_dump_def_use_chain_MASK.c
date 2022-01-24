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
struct du_chain {size_t cl; struct du_chain* next_chain; struct du_chain* next_use; int /*<<< orphan*/  insn; int /*<<< orphan*/ * loc; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int** hard_regno_nregs ; 
 char** reg_class_names ; 
 char** reg_names ; 

__attribute__((used)) static void
FUNC4 (struct du_chain *chains)
{
  while (chains)
    {
      struct du_chain *this = chains;
      int r = FUNC2 (*this->loc);
      int nregs = hard_regno_nregs[r][FUNC0 (*this->loc)];
      FUNC3 (dump_file, "Register %s (%d):", reg_names[r], nregs);
      while (this)
	{
	  FUNC3 (dump_file, " %d [%s]", FUNC1 (this->insn),
		   reg_class_names[this->cl]);
	  this = this->next_use;
	}
      FUNC3 (dump_file, "\n");
      chains = chains->next_chain;
    }
}