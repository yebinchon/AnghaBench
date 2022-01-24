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
struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* popup; void* help; int /*<<< orphan*/ * text; void* id; void* state; void* type; } ;
typedef  TYPE_1__ rc_menuitem ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static rc_menuitem *
FUNC6 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length,
			rc_uint_type *read)
{
  rc_menuitem *first, **pp;

  first = NULL;
  pp = &first;

  *read = 0;

  while (length > 0)
    {
      rc_uint_type flags, slen;
      rc_uint_type itemlen;
      rc_menuitem *mi;

      if (length < 16)
	FUNC3 (FUNC0("menuitem header"));

      mi = (rc_menuitem *) FUNC2 (sizeof (rc_menuitem));
      mi->type = FUNC5 (wrbfd, data, 4);
      mi->state = FUNC5 (wrbfd, data + 4, 4);
      mi->id = FUNC5 (wrbfd, data + 8, 4);

      flags = FUNC4 (wrbfd, data + 12, 2);

      if (FUNC4 (wrbfd, data + 14, 2) == 0)
	{
	  slen = 0;
	  mi->text = NULL;
	}
      else
	mi->text = FUNC1 (wrbfd, data + 14, length - 14, &slen);

      itemlen = 14 + slen * 2 + 2;
      itemlen = (itemlen + 3) &~ 3;

      if ((flags & 1) == 0)
	{
	  mi->popup = NULL;
	  mi->help = 0;
	}
      else
	{
	  rc_uint_type subread;

	  if (length < itemlen + 4)
	    FUNC3 (FUNC0("menuitem"));
	  mi->help = FUNC5 (wrbfd, data + itemlen, 4);
	  itemlen += 4;

	  mi->popup = FUNC6 (wrbfd, data + itemlen,
					      length - itemlen, &subread);
	  itemlen += subread;
	}

      mi->next = NULL;
      *pp = mi;
      pp = &mi->next;

      data += itemlen;
      length -= itemlen;
      *read += itemlen;

      if ((flags & 0x80) != 0)
	return first;
    }

  return first;
}