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
struct TYPE_5__ {TYPE_3__* group_cursor; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ rc_res_resource ;
struct TYPE_7__ {struct TYPE_7__* next; void* index; int /*<<< orphan*/  bytes; void* bits; void* planes; void* height; void* width; } ;
typedef  TYPE_3__ rc_group_cursor ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_GROUP_CURSOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static rc_res_resource *
FUNC6 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  int type, c, i;
  rc_group_cursor *first, **pp;
  rc_res_resource *r;

  if (length < 6)
    FUNC3 (FUNC0("group cursor header"));

  type = FUNC4 (wrbfd, data + 2, 2);
  if (type != 2)
    FUNC1 (FUNC0("unexpected group cursor type %d"), type);

  c = FUNC4 (wrbfd, data + 4, 2);

  data += 6;
  length -= 6;

  first = NULL;
  pp = &first;

  for (i = 0; i < c; i++)
    {
      rc_group_cursor *gc;

      if (length < 14)
	FUNC3 (FUNC0("group cursor"));

      gc = (rc_group_cursor *) FUNC2 (sizeof *gc);

      gc->width = FUNC4 (wrbfd, data, 2);
      gc->height = FUNC4 (wrbfd, data + 2, 2);
      gc->planes = FUNC4 (wrbfd, data + 4, 2);
      gc->bits = FUNC4 (wrbfd, data + 6, 2);
      gc->bytes = FUNC5 (wrbfd, data + 8, 4);
      gc->index = FUNC4 (wrbfd, data + 12, 2);

      gc->next = NULL;
      *pp = gc;
      pp = &gc->next;

      data += 14;
      length -= 14;
    }

  r = (rc_res_resource *) FUNC2 (sizeof (rc_res_resource));
  r->type = RES_TYPE_GROUP_CURSOR;
  r->u.group_cursor = first;

  return r;
}