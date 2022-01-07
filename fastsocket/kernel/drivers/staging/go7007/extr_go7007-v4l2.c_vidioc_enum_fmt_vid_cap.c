
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int description; int flags; int type; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 int V4L2_PIX_FMT_MJPEG ;
 int V4L2_PIX_FMT_MPEG ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *fmt)
{
 char *desc = ((void*)0);

 switch (fmt->index) {
 case 0:
  fmt->pixelformat = V4L2_PIX_FMT_MJPEG;
  desc = "Motion-JPEG";
  break;
 case 1:
  fmt->pixelformat = V4L2_PIX_FMT_MPEG;
  desc = "MPEG1/MPEG2/MPEG4";
  break;
 default:
  return -EINVAL;
 }
 fmt->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 fmt->flags = V4L2_FMT_FLAG_COMPRESSED;

 strncpy(fmt->description, desc, sizeof(fmt->description));

 return 0;
}
