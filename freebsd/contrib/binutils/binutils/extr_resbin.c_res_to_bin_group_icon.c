
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_group_icon_item {int count; int sig2; int sig1; int index; int bytes; int bits; int planes; int pad; int colors; int height; int width; } ;
struct bin_group_icon {int count; int sig2; int sig1; int index; int bytes; int bits; int planes; int pad; int colors; int height; int width; } ;
typedef int rc_uint_type ;
struct TYPE_3__ {int planes; int bits; int index; int bytes; int colors; int height; int width; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_group_icon ;


 scalar_t__ BIN_GROUP_ICON_ITEM_SIZE ;
 scalar_t__ BIN_GROUP_ICON_SIZE ;
 int set_windres_bfd_content (int *,struct bin_group_icon_item*,int ,scalar_t__) ;
 int windres_put_16 (int *,int ,int) ;
 int windres_put_32 (int *,int ,int ) ;
 int windres_put_8 (int *,int ,int ) ;

__attribute__((used)) static rc_uint_type
res_to_bin_group_icon (windres_bfd *wrbfd, rc_uint_type off, const rc_group_icon *group_icons)
{
  rc_uint_type start;
  struct bin_group_icon bgi;
  int c;
  const rc_group_icon *gi;

  start = off;
  off += BIN_GROUP_ICON_SIZE;

  for (c = 0, gi = group_icons; gi != ((void*)0); gi = gi->next, c++)
    {
      struct bin_group_icon_item bgii;

      if (wrbfd)
 {
   windres_put_8 (wrbfd, bgii.width, gi->width);
   windres_put_8 (wrbfd, bgii.height, gi->height);
   windres_put_8 (wrbfd, bgii.colors, gi->colors);
   windres_put_8 (wrbfd, bgii.pad, 0);
   windres_put_16 (wrbfd, bgii.planes, gi->planes);
   windres_put_16 (wrbfd, bgii.bits, gi->bits);
   windres_put_32 (wrbfd, bgii.bytes, gi->bytes);
   windres_put_16 (wrbfd, bgii.index, gi->index);
   set_windres_bfd_content (wrbfd, &bgii, off, BIN_GROUP_ICON_ITEM_SIZE);
 }
      off += BIN_GROUP_ICON_ITEM_SIZE;
    }

  if (wrbfd)
    {
      windres_put_16 (wrbfd, bgi.sig1, 0);
      windres_put_16 (wrbfd, bgi.sig2, 1);
      windres_put_16 (wrbfd, bgi.count, c);
      set_windres_bfd_content (wrbfd, &bgi, start, BIN_GROUP_ICON_SIZE);
    }
  return off;
}
