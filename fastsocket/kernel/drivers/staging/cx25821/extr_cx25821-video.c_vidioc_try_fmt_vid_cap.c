
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; unsigned int height; int width; int bytesperline; int sizeimage; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx25821_fmt {int depth; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_FIELD_ANY ;



 struct cx25821_fmt* format_by_fourcc (int ) ;

int vidioc_try_fmt_vid_cap(struct file *file, void *priv, struct v4l2_format *f)
{
 struct cx25821_fmt *fmt;
 enum v4l2_field field;
 unsigned int maxw, maxh;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;

 field = f->fmt.pix.field;
 maxw = 720;
 maxh = 576;

 if (V4L2_FIELD_ANY == field) {
  field = (f->fmt.pix.height > maxh / 2)
      ? 129 : 128;
 }

 switch (field) {
 case 128:
 case 130:
  maxh = maxh / 2;
  break;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 f->fmt.pix.field = field;
 if (f->fmt.pix.height < 32)
  f->fmt.pix.height = 32;
 if (f->fmt.pix.height > maxh)
  f->fmt.pix.height = maxh;
 if (f->fmt.pix.width < 48)
  f->fmt.pix.width = 48;
 if (f->fmt.pix.width > maxw)
  f->fmt.pix.width = maxw;
 f->fmt.pix.width &= ~0x03;
 f->fmt.pix.bytesperline = (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;

 return 0;
}
