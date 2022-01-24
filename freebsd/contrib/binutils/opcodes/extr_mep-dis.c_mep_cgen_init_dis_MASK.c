#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  print_operand; int /*<<< orphan*/ * print_handlers; } ;
typedef  TYPE_1__* CGEN_CPU_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * mep_cgen_print_handlers ; 
 int /*<<< orphan*/  mep_cgen_print_operand ; 

void
FUNC2 (CGEN_CPU_DESC cd)
{
  FUNC1 (cd);
  FUNC0 (cd);
  cd->print_handlers = & mep_cgen_print_handlers[0];
  cd->print_operand = mep_cgen_print_operand;
}