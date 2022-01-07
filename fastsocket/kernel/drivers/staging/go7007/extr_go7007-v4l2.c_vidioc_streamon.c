
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_file {int lock; struct go7007* go; } ;
struct go7007 {int streaming; int hw_lock; int * active_buf; scalar_t__ next_seq; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int EIO ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ go7007_start_encoder (struct go7007*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct go7007_file *gofh = priv;
 struct go7007 *go = gofh->go;
 int retval = 0;

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 mutex_lock(&gofh->lock);
 mutex_lock(&go->hw_lock);

 if (!go->streaming) {
  go->streaming = 1;
  go->next_seq = 0;
  go->active_buf = ((void*)0);
  if (go7007_start_encoder(go) < 0)
   retval = -EIO;
  else
   retval = 0;
 }
 mutex_unlock(&go->hw_lock);
 mutex_unlock(&gofh->lock);

 return retval;
}
