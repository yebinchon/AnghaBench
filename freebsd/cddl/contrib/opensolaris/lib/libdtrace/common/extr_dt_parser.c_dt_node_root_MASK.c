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
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pcb_root; } ;

/* Variables and functions */
 TYPE_1__* yypcb ; 

int
FUNC0(dt_node_t *dnp)
{
	yypcb->pcb_root = dnp;
	return (0);
}