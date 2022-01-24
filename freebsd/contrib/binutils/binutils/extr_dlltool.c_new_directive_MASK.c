#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* next; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ dlist_type ;

/* Variables and functions */
 TYPE_1__* a_list ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (char *dir)
{
  dlist_type *d = (dlist_type *) FUNC0 (sizeof (dlist_type));
  d->text = FUNC1 (dir);
  d->next = a_list;
  a_list = d;
}