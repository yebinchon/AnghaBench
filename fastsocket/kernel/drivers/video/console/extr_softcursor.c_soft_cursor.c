
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fbcon_ops {unsigned int cursor_size; int* cursor_src; } ;
struct TYPE_4__ {int scan_align; int buf_align; } ;
struct fb_info {scalar_t__ state; TYPE_1__* fbops; TYPE_2__ pixmap; struct fbcon_ops* fbcon_par; } ;
struct fb_image {int width; unsigned int height; int* data; } ;
struct fb_cursor {int rop; int* mask; scalar_t__ enable; struct fb_image image; } ;
struct TYPE_3__ {int (* fb_imageblit ) (struct fb_info*,struct fb_image*) ;} ;


 int ENOMEM ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 int GFP_ATOMIC ;


 int* fb_get_buffer_offset (struct fb_info*,TYPE_2__*,unsigned int) ;
 int fb_pad_aligned_buffer (int*,unsigned int,int*,unsigned int,unsigned int) ;
 int kfree (int*) ;
 int* kmalloc (unsigned int,int ) ;
 int memcpy (int*,int*,unsigned int) ;
 int stub1 (struct fb_info*,struct fb_image*) ;

int soft_cursor(struct fb_info *info, struct fb_cursor *cursor)
{
 struct fbcon_ops *ops = info->fbcon_par;
 unsigned int scan_align = info->pixmap.scan_align - 1;
 unsigned int buf_align = info->pixmap.buf_align - 1;
 unsigned int i, size, dsize, s_pitch, d_pitch;
 struct fb_image *image;
 u8 *src, *dst;

 if (info->state != FBINFO_STATE_RUNNING)
  return 0;

 s_pitch = (cursor->image.width + 7) >> 3;
 dsize = s_pitch * cursor->image.height;

 if (dsize + sizeof(struct fb_image) != ops->cursor_size) {
  if (ops->cursor_src != ((void*)0))
   kfree(ops->cursor_src);
  ops->cursor_size = dsize + sizeof(struct fb_image);

  ops->cursor_src = kmalloc(ops->cursor_size, GFP_ATOMIC);
  if (!ops->cursor_src) {
   ops->cursor_size = 0;
   return -ENOMEM;
  }
 }

 src = ops->cursor_src + sizeof(struct fb_image);
 image = (struct fb_image *)ops->cursor_src;
 *image = cursor->image;
 d_pitch = (s_pitch + scan_align) & ~scan_align;

 size = d_pitch * image->height + buf_align;
 size &= ~buf_align;
 dst = fb_get_buffer_offset(info, &info->pixmap, size);

 if (cursor->enable) {
  switch (cursor->rop) {
  case 128:
   for (i = 0; i < dsize; i++)
    src[i] = image->data[i] ^ cursor->mask[i];
   break;
  case 129:
  default:
   for (i = 0; i < dsize; i++)
    src[i] = image->data[i] & cursor->mask[i];
   break;
  }
 } else
  memcpy(src, image->data, dsize);

 fb_pad_aligned_buffer(dst, d_pitch, src, s_pitch, image->height);
 image->data = dst;
 info->fbops->fb_imageblit(info, image);
 return 0;
}
