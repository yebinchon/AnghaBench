#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  al_elements; } ;
typedef  TYPE_1__ alist_t ;
struct TYPE_7__ {void* ale_value; void* ale_name; } ;
typedef  TYPE_2__ alist_el_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 

void
FUNC2(alist_t *alist, void *name, void *value)
{
	alist_el_t *el;

	el = FUNC1(sizeof (alist_el_t));
	el->ale_name = name;
	el->ale_value = value;
	FUNC0(alist->al_elements, el);
}