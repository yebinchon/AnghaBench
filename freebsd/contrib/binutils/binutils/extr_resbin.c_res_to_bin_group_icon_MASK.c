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
struct bin_group_icon_item {int /*<<< orphan*/  count; int /*<<< orphan*/  sig2; int /*<<< orphan*/  sig1; int /*<<< orphan*/  index; int /*<<< orphan*/  bytes; int /*<<< orphan*/  bits; int /*<<< orphan*/  planes; int /*<<< orphan*/  pad; int /*<<< orphan*/  colors; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct bin_group_icon {int /*<<< orphan*/  count; int /*<<< orphan*/  sig2; int /*<<< orphan*/  sig1; int /*<<< orphan*/  index; int /*<<< orphan*/  bytes; int /*<<< orphan*/  bits; int /*<<< orphan*/  planes; int /*<<< orphan*/  pad; int /*<<< orphan*/  colors; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  rc_uint_type ;
struct TYPE_3__ {int planes; int bits; int index; int /*<<< orphan*/  bytes; int /*<<< orphan*/  colors; int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_group_icon ;

/* Variables and functions */
 scalar_t__ BIN_GROUP_ICON_ITEM_SIZE ; 
 scalar_t__ BIN_GROUP_ICON_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_group_icon_item*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rc_uint_type
FUNC4 (windres_bfd *wrbfd, rc_uint_type off, const rc_group_icon *group_icons)
{
  rc_uint_type start;
  struct bin_group_icon bgi;
  int c;
  const rc_group_icon *gi;

  start = off;
  off += BIN_GROUP_ICON_SIZE;

  for (c = 0, gi = group_icons; gi != NULL; gi = gi->next, c++)
    {
      struct bin_group_icon_item bgii;

      if (wrbfd)
	{
	  FUNC3 (wrbfd, bgii.width, gi->width);
	  FUNC3 (wrbfd, bgii.height, gi->height);
	  FUNC3 (wrbfd, bgii.colors, gi->colors);
	  FUNC3 (wrbfd, bgii.pad, 0);
	  FUNC1 (wrbfd, bgii.planes, gi->planes);
	  FUNC1 (wrbfd, bgii.bits, gi->bits);
	  FUNC2 (wrbfd, bgii.bytes, gi->bytes);
	  FUNC1 (wrbfd, bgii.index, gi->index);
	  FUNC0 (wrbfd, &bgii, off, BIN_GROUP_ICON_ITEM_SIZE);
	}
      off += BIN_GROUP_ICON_ITEM_SIZE;
    }

  if (wrbfd)
    {
      FUNC1 (wrbfd, bgi.sig1, 0);
      FUNC1 (wrbfd, bgi.sig2, 1);
      FUNC1 (wrbfd, bgi.count, c);
      FUNC0 (wrbfd, &bgi, start, BIN_GROUP_ICON_SIZE);
    }
  return off;
}