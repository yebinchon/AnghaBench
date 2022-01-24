#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * next; int /*<<< orphan*/  actual; int /*<<< orphan*/  def; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ formal_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FORMAL_OPTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static formal_entry *
FUNC2 (void)
{
  formal_entry *formal;

  formal = FUNC1 (sizeof (formal_entry));

  FUNC0 (&formal->name);
  FUNC0 (&formal->def);
  FUNC0 (&formal->actual);
  formal->next = NULL;
  formal->type = FORMAL_OPTIONAL;
  return formal;
}