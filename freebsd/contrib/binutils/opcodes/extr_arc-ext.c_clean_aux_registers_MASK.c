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
struct ExtAuxRegister {struct ExtAuxRegister* name; struct ExtAuxRegister* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ExtAuxRegister*) ; 

__attribute__((used)) static void
FUNC1(struct ExtAuxRegister *r)
{
  if (r -> next)
    {
      FUNC1( r->next);
      FUNC0(r -> name);
      FUNC0(r -> next);
      r ->next = NULL;
    }
  else
    FUNC0(r -> name);
}