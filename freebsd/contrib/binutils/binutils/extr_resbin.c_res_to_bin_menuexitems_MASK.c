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
struct bin_menuitemex {int /*<<< orphan*/  flags; struct bin_menuitemex* id; struct bin_menuitemex* state; struct bin_menuitemex* type; } ;
typedef  int rc_uint_type ;
struct TYPE_3__ {struct TYPE_3__* popup; int /*<<< orphan*/  help; int /*<<< orphan*/  text; int /*<<< orphan*/  id; int /*<<< orphan*/  state; int /*<<< orphan*/  type; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_menuitem ;
typedef  struct bin_menuitemex bfd_byte ;

/* Variables and functions */
 int BIN_MENUITEMEX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_menuitemex*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bin_menuitemex*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rc_uint_type
FUNC4 (windres_bfd *wrbfd, rc_uint_type off, const rc_menuitem *items)
{
  rc_uint_type off_delta = off;
  const rc_menuitem *mi;

  for (mi = items; mi != NULL; mi = mi->next)
    {
      struct bin_menuitemex bmi;
      int flags;

      off += (4 - ((off - off_delta) & 3)) & 3;

      flags = 0;
      if (mi->next == NULL)
	flags |= 0x80;
      if (mi->popup != NULL)
	flags |= 1;

      if (wrbfd)
	{
	  FUNC3 (wrbfd, bmi.type, mi->type);
	  FUNC3 (wrbfd, bmi.state, mi->state);
	  FUNC3 (wrbfd, bmi.id, mi->id);
	  FUNC2 (wrbfd, bmi.flags, flags);
	  FUNC0 (wrbfd, &bmi, off, BIN_MENUITEMEX_SIZE);
	}
      off += BIN_MENUITEMEX_SIZE;

      off = FUNC1 (wrbfd, off, mi->text);

      if (mi->popup != NULL)
	{
	  bfd_byte help[4];

	  off += (4 - ((off - off_delta) & 3)) & 3;

	  if (wrbfd)
	    {
	      FUNC3 (wrbfd, help, mi->help);
	      FUNC0 (wrbfd, help, off, 4);
	    }
	  off += 4;
	  off = FUNC4 (wrbfd, off, mi->popup);
	}
    }
  return off;
}