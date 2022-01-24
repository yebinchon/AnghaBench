#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  int rc_uint_type ;
struct TYPE_5__ {TYPE_3__* menu; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ rc_res_resource ;
struct TYPE_7__ {int /*<<< orphan*/  items; scalar_t__ help; } ;
typedef  TYPE_3__ rc_menu ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_MENU ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

rc_res_resource *
FUNC8 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  rc_res_resource *r;
  rc_menu *m;
  rc_uint_type version, read;

  r = (rc_res_resource *) FUNC4 (sizeof *r);
  r->type = RES_TYPE_MENU;

  m = (rc_menu *) FUNC4 (sizeof (rc_menu));
  r->u.menu = m;

  if (length < 2)
    FUNC5 (FUNC0("menu header"));

  version = FUNC6 (wrbfd, data, 2);

  if (version == 0)
    {
      if (length < 4)
	FUNC5 (FUNC0("menu header"));
      m->help = 0;
      m->items = FUNC2 (wrbfd, data + 4, length - 4, &read);
    }
  else if (version == 1)
    {
      rc_uint_type offset;

      if (length < 8)
	FUNC5 (FUNC0("menuex header"));
      m->help = FUNC7 (wrbfd, data + 4, 4);
      offset = FUNC6 (wrbfd, data + 2, 2);
      if (offset + 4 >= length)
	FUNC5 (FUNC0("menuex offset"));
      m->items = FUNC1 (wrbfd, data + 4 + offset,
					 length - (4 + offset), &read);
    }
  else
    FUNC3 (FUNC0("unsupported menu version %d"), (int) version);

  return r;
}