#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; scalar_t__* s; int /*<<< orphan*/  i; } ;
struct TYPE_5__ {int /*<<< orphan*/  tag; TYPE_2__ attr; struct TYPE_5__* next; } ;
typedef  TYPE_1__ obj_attribute_list ;
typedef  TYPE_2__ obj_attribute ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int NUM_KNOWN_OBJ_ATTRIBUTES ; 
 int OBJ_ATTR_FIRST ; 
 int OBJ_ATTR_LAST ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_2__** FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7 (bfd *ibfd, bfd *obfd)
{
  obj_attribute *in_attr;
  obj_attribute *out_attr;
  obj_attribute_list *list;
  int i;
  int vendor;

  for (vendor = OBJ_ATTR_FIRST; vendor <= OBJ_ATTR_LAST; vendor++)
    {
      in_attr = &FUNC5 (ibfd)[vendor][4];
      out_attr = &FUNC5 (obfd)[vendor][4];
      for (i = 4; i < NUM_KNOWN_OBJ_ATTRIBUTES; i++)
	{
	  out_attr->type = in_attr->type;
	  out_attr->i = in_attr->i;
	  if (in_attr->s && *in_attr->s)
	    out_attr->s = FUNC0 (obfd, in_attr->s);
	  in_attr++;
	  out_attr++;
	}

      for (list = FUNC6 (ibfd)[vendor];
	   list;
	   list = list->next)
	{
	  in_attr = &list->attr;
	  switch (in_attr->type)
	    {
	    case 1:
	      FUNC3 (obfd, vendor, list->tag, in_attr->i);
	      break;
	    case 2:
	      FUNC4 (obfd, vendor, list->tag,
					   in_attr->s);
	      break;
	    case 3:
	      FUNC2 (obfd, vendor, in_attr->i,
					   in_attr->s);
	      break;
	    default:
	      FUNC1 ();
	    }
	}
    }
}