
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx25821_fh {scalar_t__ type; struct cx25821_dev* dev; } ;
struct cx25821_dev {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int EINVAL ;
 int RESOURCE_VIDEO10 ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int get_queue (struct cx25821_fh*) ;
 int get_resource (struct cx25821_fh*,int ) ;
 int res_get (struct cx25821_dev*,struct cx25821_fh*,int ) ;
 scalar_t__ unlikely (int) ;
 int videobuf_streamon (int ) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct cx25821_fh *fh = priv;
 struct cx25821_dev *dev = fh->dev;

 if (unlikely(fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)) {
  return -EINVAL;
 }

 if (unlikely(i != fh->type)) {
  return -EINVAL;
 }

 if (unlikely(!res_get(dev, fh, get_resource(fh, RESOURCE_VIDEO10)))) {
  return -EBUSY;
 }

 return videobuf_streamon(get_queue(fh));
}
