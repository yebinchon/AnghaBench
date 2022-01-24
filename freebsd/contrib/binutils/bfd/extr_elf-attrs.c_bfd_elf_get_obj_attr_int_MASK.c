#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int i; } ;
struct TYPE_6__ {int tag; TYPE_1__ attr; struct TYPE_6__* next; } ;
typedef  TYPE_2__ obj_attribute_list ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int i; } ;

/* Variables and functions */
 int NUM_KNOWN_OBJ_ATTRIBUTES ; 
 TYPE_4__** FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2 (bfd *abfd, int vendor, int tag)
{
  obj_attribute_list *p;

  if (tag < NUM_KNOWN_OBJ_ATTRIBUTES)
    {
      /* Knwon tags are preallocated.  */
      return FUNC0 (abfd)[vendor][tag].i;
    }
  else
    {
      for (p = FUNC1 (abfd)[vendor];
	   p;
	   p = p->next)
	{
	  if (tag == p->tag)
	    return p->attr.i;
	  if (tag < p->tag)
	    break;
	}
      return 0;
    }
}