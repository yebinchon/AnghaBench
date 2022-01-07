
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_group_cursor_item {int nitems; int sig2; int sig1; int index; int bytes; int bits; int planes; int height; int width; } ;
struct bin_group_cursor {int nitems; int sig2; int sig1; int index; int bytes; int bits; int planes; int height; int width; } ;
typedef int rc_uint_type ;
struct TYPE_3__ {int width; int height; int planes; int bits; int index; int bytes; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_group_cursor ;


 scalar_t__ BIN_GROUP_CURSOR_ITEM_SIZE ;
 scalar_t__ BIN_GROUP_CURSOR_SIZE ;
 int set_windres_bfd_content (int *,struct bin_group_cursor_item*,int ,scalar_t__) ;
 int windres_put_16 (int *,int ,int) ;
 int windres_put_32 (int *,int ,int ) ;

__attribute__((used)) static rc_uint_type
res_to_bin_group_cursor (windres_bfd *wrbfd, rc_uint_type off,
    const rc_group_cursor *group_cursors)
{
  int c = 0;
  const rc_group_cursor *gc;
  struct bin_group_cursor bgc;
  struct bin_group_cursor_item bgci;
  rc_uint_type start = off;

  off += BIN_GROUP_CURSOR_SIZE;

  for (c = 0, gc = group_cursors; gc != ((void*)0); gc = gc->next, c++)
    {
      if (wrbfd)
 {
   windres_put_16 (wrbfd, bgci.width, gc->width);
   windres_put_16 (wrbfd, bgci.height, gc->height);
   windres_put_16 (wrbfd, bgci.planes, gc->planes);
   windres_put_16 (wrbfd, bgci.bits, gc->bits);
   windres_put_32 (wrbfd, bgci.bytes, gc->bytes);
   windres_put_16 (wrbfd, bgci.index, gc->index);
   set_windres_bfd_content (wrbfd, &bgci, off, BIN_GROUP_CURSOR_ITEM_SIZE);
    }

      off += BIN_GROUP_CURSOR_ITEM_SIZE;
    }
  if (wrbfd)
    {
      windres_put_16 (wrbfd, bgc.sig1, 0);
      windres_put_16 (wrbfd, bgc.sig2, 2);
      windres_put_16 (wrbfd, bgc.nitems, c);
      set_windres_bfd_content (wrbfd, &bgc, start, BIN_GROUP_CURSOR_SIZE);
    }
  return off;
}
