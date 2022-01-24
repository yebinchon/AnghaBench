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
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int op; char const* demangled; int /*<<< orphan*/ * mangled; } ;

/* Variables and functions */
 TYPE_1__* ada_opname_table ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static const char *
FUNC1 (enum exp_opcode op)
{
  int i;

  for (i = 0; ada_opname_table[i].mangled != NULL; i += 1)
    {
      if (ada_opname_table[i].op == op)
	return ada_opname_table[i].demangled;
    }
  FUNC0 ("Could not find operator name for opcode");
}