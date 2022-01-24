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
struct vbase {struct vbase* next; struct type* vbasetype; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 struct type* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 struct vbase* current_vbase_list ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (struct type *dclass)
{
  struct vbase *tmp_vbase;
  int i;

  if (FUNC1 (dclass) != TYPE_CODE_CLASS)
    return;

  for (i = 0; i < FUNC3 (dclass); i++)
    {
      /* Recurse on this ancestor, first */
      FUNC5 (FUNC2 (dclass, i));

      /* If this current base is itself virtual, add it to the list */
      if (FUNC0 (dclass, i))
	{
	  struct type *basetype = FUNC2 (dclass, i);

	  /* Check if base already recorded */
	  tmp_vbase = current_vbase_list;
	  while (tmp_vbase)
	    {
	      if (tmp_vbase->vbasetype == basetype)
		break;		/* found it */
	      tmp_vbase = tmp_vbase->next;
	    }

	  if (!tmp_vbase)	/* normal exit from loop */
	    {
	      /* Allocate new item for this virtual base */
	      tmp_vbase = (struct vbase *) FUNC4 (sizeof (struct vbase));

	      /* Stick it on at the end of the list */
	      tmp_vbase->vbasetype = basetype;
	      tmp_vbase->next = current_vbase_list;
	      current_vbase_list = tmp_vbase;
	    }
	}			/* if virtual */
    }				/* for loop over bases */
}