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
union exp_element {int opcode; } ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union exp_element) ; 

void
FUNC1 (enum exp_opcode expelt)
{
  union exp_element tmp;

  tmp.opcode = expelt;

  FUNC0 (tmp);
}