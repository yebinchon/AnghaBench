
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct bin_cursor {int yhotspot; int xhotspot; } ;
typedef scalar_t__ rc_uint_type ;
struct TYPE_3__ {scalar_t__ length; struct bin_cursor* data; int yhotspot; int xhotspot; } ;
typedef TYPE_1__ rc_cursor ;


 scalar_t__ BIN_CURSOR_SIZE ;
 int set_windres_bfd_content (int *,struct bin_cursor*,scalar_t__,scalar_t__) ;
 int windres_put_16 (int *,int ,int ) ;

__attribute__((used)) static rc_uint_type
res_to_bin_cursor (windres_bfd *wrbfd, rc_uint_type off, const rc_cursor *c)
{
  if (wrbfd)
    {
      struct bin_cursor bc;

      windres_put_16 (wrbfd, bc.xhotspot, c->xhotspot);
      windres_put_16 (wrbfd, bc.yhotspot, c->yhotspot);
      set_windres_bfd_content (wrbfd, &bc, off, BIN_CURSOR_SIZE);
      if (c->length)
 set_windres_bfd_content (wrbfd, c->data, off + BIN_CURSOR_SIZE, c->length);
    }
  off = (off + BIN_CURSOR_SIZE + (rc_uint_type) c->length);
  return off;
}
