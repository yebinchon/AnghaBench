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
typedef  TYPE_1__* varinfo_t ;
struct TYPE_4__ {scalar_t__ offset; struct TYPE_4__* next; } ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0 (varinfo_t base, varinfo_t field)
{
  varinfo_t prev = base;
  varinfo_t curr = base->next;

  if (curr == NULL)
    {
      prev->next = field;
      field->next = NULL;
    }
  else
    {
      while (curr)
	{
	  if (field->offset <= curr->offset)
	    break;
	  prev = curr;
	  curr = curr->next;
	}
      field->next = prev->next;
      prev->next = field;
    }
}