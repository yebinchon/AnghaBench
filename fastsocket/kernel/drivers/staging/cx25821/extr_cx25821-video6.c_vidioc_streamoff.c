
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx25821_fh {scalar_t__ type; struct cx25821_dev* dev; } ;
struct cx25821_dev {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int RESOURCE_VIDEO6 ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int get_queue (struct cx25821_fh*) ;
 int get_resource (struct cx25821_fh*,int ) ;
 int res_free (struct cx25821_dev*,struct cx25821_fh*,int) ;
 int videobuf_streamoff (int ) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct cx25821_fh *fh = priv;
 struct cx25821_dev *dev = fh->dev;
 int err, res;

 if (fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (i != fh->type)
  return -EINVAL;

 res = get_resource(fh, RESOURCE_VIDEO6);
 err = videobuf_streamoff(get_queue(fh));
 if (err < 0)
  return err;
 res_free(dev, fh, res);
 return 0;
}
