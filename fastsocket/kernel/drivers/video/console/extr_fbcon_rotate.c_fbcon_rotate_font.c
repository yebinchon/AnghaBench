
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ data; int width; int height; } ;
struct vc_data {TYPE_3__ vc_font; } ;
struct fbcon_ops {scalar_t__ fontdata; scalar_t__ cur_rotate; int rotate; int fd_size; int * fontbuffer; TYPE_1__* p; } ;
struct fb_info {TYPE_2__* fbops; struct fbcon_ops* fbcon_par; } ;
struct TYPE_5__ {int (* fb_sync ) (struct fb_info*) ;} ;
struct TYPE_4__ {scalar_t__ con_rotate; int userfont; } ;


 int ENOMEM ;



 int FNTCHARCNT (int const*) ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int rotate_ccw (int const*,int *,int,int) ;
 int rotate_cw (int const*,int *,int,int) ;
 int rotate_ud (int const*,int *,int,int) ;
 int stub1 (struct fb_info*) ;

__attribute__((used)) static int fbcon_rotate_font(struct fb_info *info, struct vc_data *vc)
{
 struct fbcon_ops *ops = info->fbcon_par;
 int len, err = 0;
 int s_cellsize, d_cellsize, i;
 const u8 *src;
 u8 *dst;

 if (vc->vc_font.data == ops->fontdata &&
     ops->p->con_rotate == ops->cur_rotate)
  goto finished;

 src = ops->fontdata = vc->vc_font.data;
 ops->cur_rotate = ops->p->con_rotate;
 len = (!ops->p->userfont) ? 256 : FNTCHARCNT(src);
 s_cellsize = ((vc->vc_font.width + 7)/8) *
  vc->vc_font.height;
 d_cellsize = s_cellsize;

 if (ops->rotate == 129 ||
     ops->rotate == 130)
  d_cellsize = ((vc->vc_font.height + 7)/8) *
   vc->vc_font.width;

 if (info->fbops->fb_sync)
  info->fbops->fb_sync(info);

 if (ops->fd_size < d_cellsize * len) {
  dst = kmalloc(d_cellsize * len, GFP_KERNEL);

  if (dst == ((void*)0)) {
   err = -ENOMEM;
   goto finished;
  }

  ops->fd_size = d_cellsize * len;
  kfree(ops->fontbuffer);
  ops->fontbuffer = dst;
 }

 dst = ops->fontbuffer;
 memset(dst, 0, ops->fd_size);

 switch (ops->rotate) {
 case 128:
  for (i = len; i--; ) {
   rotate_ud(src, dst, vc->vc_font.width,
      vc->vc_font.height);

   src += s_cellsize;
   dst += d_cellsize;
  }
  break;
 case 129:
  for (i = len; i--; ) {
   rotate_cw(src, dst, vc->vc_font.width,
      vc->vc_font.height);
   src += s_cellsize;
   dst += d_cellsize;
  }
  break;
 case 130:
  for (i = len; i--; ) {
   rotate_ccw(src, dst, vc->vc_font.width,
       vc->vc_font.height);
   src += s_cellsize;
   dst += d_cellsize;
  }
  break;
 }

finished:
 return err;
}
