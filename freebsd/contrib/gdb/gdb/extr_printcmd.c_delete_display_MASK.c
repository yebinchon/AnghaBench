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
struct display {int number; struct display* next; } ;

/* Variables and functions */
 struct display* display_chain ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct display*) ; 

__attribute__((used)) static void
FUNC2 (int num)
{
  struct display *d1, *d;

  if (!display_chain)
    FUNC0 ("No display number %d.", num);

  if (display_chain->number == num)
    {
      d1 = display_chain;
      display_chain = d1->next;
      FUNC1 (d1);
    }
  else
    for (d = display_chain;; d = d->next)
      {
	if (d->next == 0)
	  FUNC0 ("No display number %d.", num);
	if (d->next->number == num)
	  {
	    d1 = d->next;
	    d->next = d1->next;
	    FUNC1 (d1);
	    break;
	  }
      }
}