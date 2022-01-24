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
typedef  int /*<<< orphan*/  windres_bfd ;
struct bin_menuitem {int /*<<< orphan*/  id; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  rc_uint_type ;
struct TYPE_3__ {int type; int id; struct TYPE_3__* popup; int /*<<< orphan*/  text; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_menuitem ;

/* Variables and functions */
 scalar_t__ BIN_MENUITEM_POPUP_SIZE ; 
 scalar_t__ BIN_MENUITEM_SIZE ; 
 int MENUITEM_ENDMENU ; 
 int MENUITEM_POPUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_menuitem*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rc_uint_type
FUNC3 (windres_bfd *wrbfd, rc_uint_type off, const rc_menuitem *items)
{
  const rc_menuitem *mi;

  for (mi = items; mi != NULL; mi = mi->next)
    {
      struct bin_menuitem bmi;
      int flags;

      flags = mi->type;
      if (mi->next == NULL)
	flags |= MENUITEM_ENDMENU;
      if (mi->popup != NULL)
	flags |= MENUITEM_POPUP;

      if (wrbfd)
	{
	  FUNC2 (wrbfd, bmi.flags, flags);
      if (mi->popup == NULL)
	    FUNC2 (wrbfd, bmi.id, mi->id);
	  FUNC0 (wrbfd, &bmi, off,
				   mi->popup == NULL ? BIN_MENUITEM_SIZE
				   		     : BIN_MENUITEM_POPUP_SIZE);
	}
      off += (mi->popup == NULL ? BIN_MENUITEM_SIZE : BIN_MENUITEM_POPUP_SIZE);

      off = FUNC1 (wrbfd, off, mi->text);

      if (mi->popup != NULL)
	{
	  off = FUNC3 (wrbfd, off, mi->popup);
	}
    }
  return off;
}