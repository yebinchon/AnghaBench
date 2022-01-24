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
struct TYPE_5__ {TYPE_3__* group_icon; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ rc_res_resource ;
struct TYPE_7__ {struct TYPE_7__* next; void* index; int /*<<< orphan*/  bytes; void* bits; void* planes; void* colors; void* height; void* width; } ;
typedef  TYPE_3__ rc_group_icon ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_GROUP_ICON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static rc_res_resource *
FUNC7 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  int type, c, i;
  rc_group_icon *first, **pp;
  rc_res_resource *r;

  if (length < 6)
    FUNC3 (FUNC0("group icon header"));

  type = FUNC4 (wrbfd, data + 2, 2);
  if (type != 1)
    FUNC1 (FUNC0("unexpected group icon type %d"), type);

  c = FUNC4 (wrbfd, data + 4, 2);

  data += 6;
  length -= 6;

  first = NULL;
  pp = &first;

  for (i = 0; i < c; i++)
    {
      rc_group_icon *gi;

      if (length < 14)
	FUNC3 (FUNC0("group icon"));

      gi = (rc_group_icon *) FUNC2 (sizeof (rc_group_icon));

      gi->width = FUNC6 (wrbfd, data, 1);
      gi->height = FUNC6 (wrbfd, data + 1, 1);
      gi->colors = FUNC6 (wrbfd, data + 2, 1);
      gi->planes = FUNC4 (wrbfd, data + 4, 2);
      gi->bits = FUNC4 (wrbfd, data + 6, 2);
      gi->bytes = FUNC5 (wrbfd, data + 8, 4);
      gi->index = FUNC4 (wrbfd, data + 12, 2);

      gi->next = NULL;
      *pp = gi;
      pp = &gi->next;

      data += 14;
      length -= 14;
    }

  r = (rc_res_resource *) FUNC2 (sizeof *r);
  r->type = RES_TYPE_GROUP_ICON;
  r->u.group_icon = first;

  return r;
}