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
struct TYPE_4__ {int tag; int /*<<< orphan*/  attr; struct TYPE_4__* next; } ;
typedef  TYPE_1__ obj_attribute_list ;
typedef  int /*<<< orphan*/  obj_attribute ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int NUM_KNOWN_OBJ_ATTRIBUTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static obj_attribute *
FUNC4 (bfd *abfd, int vendor, int tag)
{
  obj_attribute *attr;
  obj_attribute_list *list;
  obj_attribute_list *p;
  obj_attribute_list **lastp;


  if (tag < NUM_KNOWN_OBJ_ATTRIBUTES)
    {
      /* Knwon tags are preallocated.  */
      attr = &FUNC1 (abfd)[vendor][tag];
    }
  else
    {
      /* Create a new tag.  */
      list = (obj_attribute_list *)
	FUNC0 (abfd, sizeof (obj_attribute_list));
      FUNC3 (list, 0, sizeof (obj_attribute_list));
      list->tag = tag;
      /* Keep the tag list in order.  */
      lastp = &FUNC2 (abfd)[vendor];
      for (p = *lastp; p; p = p->next)
	{
	  if (tag < p->tag)
	    break;
	  lastp = &p->next;
	}
      list->next = *lastp;
      *lastp = list;
      attr = &list->attr;
    }

  return attr;
}