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
struct TYPE_3__ {int type; scalar_t__ id; scalar_t__ state; scalar_t__ help; struct TYPE_3__* popup; int /*<<< orphan*/ * text; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_menuitem ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MENUITEM_CHECKED ; 
 int MENUITEM_GRAYED ; 
 int MENUITEM_HELP ; 
 int MENUITEM_INACTIVE ; 
 int MENUITEM_MENUBARBREAK ; 
 int MENUITEM_MENUBREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3 (FILE *e, const rc_menuitem *menuitems, int menuex,
		    int ind)
{
  const rc_menuitem *mi;

  FUNC1 (e, ind);
  FUNC0 (e, "BEGIN\n");

  for (mi = menuitems; mi != NULL; mi = mi->next)
    {
      FUNC1 (e, ind + 2);

      if (mi->popup == NULL)
	FUNC0 (e, "MENUITEM");
      else
	FUNC0 (e, "POPUP");

      if (! menuex
	  && mi->popup == NULL
	  && mi->text == NULL
	  && mi->type == 0
	  && mi->id == 0)
	{
	  FUNC0 (e, " SEPARATOR\n");
	  continue;
	}

      if (mi->text == NULL)
	FUNC0 (e, " \"\"");
      else
	{
	  FUNC0 (e, " ");
	  FUNC2 (e, mi->text, -1);
	}

      if (! menuex)
	{
	  if (mi->popup == NULL)
	    FUNC0 (e, ", %d", (int) mi->id);

	  if ((mi->type & MENUITEM_CHECKED) != 0)
	    FUNC0 (e, ", CHECKED");
	  if ((mi->type & MENUITEM_GRAYED) != 0)
	    FUNC0 (e, ", GRAYED");
	  if ((mi->type & MENUITEM_HELP) != 0)
	    FUNC0 (e, ", HELP");
	  if ((mi->type & MENUITEM_INACTIVE) != 0)
	    FUNC0 (e, ", INACTIVE");
	  if ((mi->type & MENUITEM_MENUBARBREAK) != 0)
	    FUNC0 (e, ", MENUBARBREAK");
	  if ((mi->type & MENUITEM_MENUBREAK) != 0)
	    FUNC0 (e, ", MENUBREAK");
	}
      else
	{
	  if (mi->id != 0 || mi->type != 0 || mi->state != 0 || mi->help != 0)
	    {
	      FUNC0 (e, ", %d", (int) mi->id);
	      if (mi->type != 0 || mi->state != 0 || mi->help != 0)
		{
		  FUNC0 (e, ", %u", (unsigned int) mi->type);
		  if (mi->state != 0 || mi->help != 0)
		    {
		      FUNC0 (e, ", %u", (unsigned int) mi->state);
		      if (mi->help != 0)
			FUNC0 (e, ", %u", (unsigned int) mi->help);
		    }
		}
	    }
	}

      FUNC0 (e, "\n");

      if (mi->popup != NULL)
	FUNC3 (e, mi->popup, menuex, ind + 2);
    }

  FUNC1 (e, ind);
  FUNC0 (e, "END\n");
}