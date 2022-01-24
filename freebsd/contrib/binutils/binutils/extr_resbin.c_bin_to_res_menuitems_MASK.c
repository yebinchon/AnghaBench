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
typedef  int rc_uint_type ;
struct TYPE_3__ {int type; struct TYPE_3__* next; struct TYPE_3__* popup; scalar_t__ id; int /*<<< orphan*/ * text; scalar_t__ help; scalar_t__ state; } ;
typedef  TYPE_1__ rc_menuitem ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int MENUITEM_ENDMENU ; 
 int MENUITEM_POPUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static rc_menuitem *
FUNC5 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length,
		      rc_uint_type *read)
{
  rc_menuitem *first, **pp;

  first = NULL;
  pp = &first;

  *read = 0;

  while (length > 0)
    {
      rc_uint_type flags, slen, itemlen;
      rc_uint_type stroff;
      rc_menuitem *mi;

      if (length < 4)
	FUNC3 (FUNC0("menuitem header"));

      mi = (rc_menuitem *) FUNC2 (sizeof *mi);
      mi->state = 0;
      mi->help = 0;

      flags = FUNC4 (wrbfd, data, 2);
      mi->type = flags &~ (MENUITEM_POPUP | MENUITEM_ENDMENU);

      if ((flags & MENUITEM_POPUP) == 0)
	stroff = 4;
      else
	stroff = 2;

      if (length < stroff + 2)
	FUNC3 (FUNC0("menuitem header"));

      if (FUNC4 (wrbfd, data + stroff, 2) == 0)
	{
	  slen = 0;
	  mi->text = NULL;
	}
      else
	mi->text = FUNC1 (wrbfd, data + stroff, length - stroff, &slen);

      itemlen = stroff + slen * 2 + 2;

      if ((flags & MENUITEM_POPUP) == 0)
	{
	  mi->popup = NULL;
	  mi->id = FUNC4 (wrbfd, data + 2, 2);
	}
      else
	{
	  rc_uint_type subread;

	  mi->id = 0;
	  mi->popup = FUNC5 (wrbfd, data + itemlen, length - itemlen,
	  				    &subread);
	  itemlen += subread;
	}

      mi->next = NULL;
      *pp = mi;
      pp = &mi->next;

      data += itemlen;
      length -= itemlen;
      *read += itemlen;

      if ((flags & MENUITEM_ENDMENU) != 0)
	return first;
    }

  return first;
}