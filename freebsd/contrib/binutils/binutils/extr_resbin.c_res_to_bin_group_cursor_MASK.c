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
struct bin_group_cursor_item {int /*<<< orphan*/  nitems; int /*<<< orphan*/  sig2; int /*<<< orphan*/  sig1; int /*<<< orphan*/  index; int /*<<< orphan*/  bytes; int /*<<< orphan*/  bits; int /*<<< orphan*/  planes; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct bin_group_cursor {int /*<<< orphan*/  nitems; int /*<<< orphan*/  sig2; int /*<<< orphan*/  sig1; int /*<<< orphan*/  index; int /*<<< orphan*/  bytes; int /*<<< orphan*/  bits; int /*<<< orphan*/  planes; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  rc_uint_type ;
struct TYPE_3__ {int width; int height; int planes; int bits; int index; int /*<<< orphan*/  bytes; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_group_cursor ;

/* Variables and functions */
 scalar_t__ BIN_GROUP_CURSOR_ITEM_SIZE ; 
 scalar_t__ BIN_GROUP_CURSOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_group_cursor_item*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rc_uint_type
FUNC3 (windres_bfd *wrbfd, rc_uint_type off,
			 const rc_group_cursor *group_cursors)
{
  int c = 0;
  const rc_group_cursor *gc;
  struct bin_group_cursor bgc;
  struct bin_group_cursor_item bgci;
  rc_uint_type start = off;

  off += BIN_GROUP_CURSOR_SIZE;

  for (c = 0, gc = group_cursors; gc != NULL; gc = gc->next, c++)
    {
      if (wrbfd)
	{
	  FUNC1 (wrbfd, bgci.width, gc->width);
	  FUNC1 (wrbfd, bgci.height, gc->height);
	  FUNC1 (wrbfd, bgci.planes, gc->planes);
	  FUNC1 (wrbfd, bgci.bits, gc->bits);
	  FUNC2 (wrbfd, bgci.bytes, gc->bytes);
	  FUNC1 (wrbfd, bgci.index, gc->index);
	  FUNC0 (wrbfd, &bgci, off, BIN_GROUP_CURSOR_ITEM_SIZE);
    }

      off += BIN_GROUP_CURSOR_ITEM_SIZE;
    }
  if (wrbfd)
    {
      FUNC1 (wrbfd, bgc.sig1, 0);
      FUNC1 (wrbfd, bgc.sig2, 2);
      FUNC1 (wrbfd, bgc.nitems, c);
      FUNC0 (wrbfd, &bgc, start, BIN_GROUP_CURSOR_SIZE);
    }
  return off;
}