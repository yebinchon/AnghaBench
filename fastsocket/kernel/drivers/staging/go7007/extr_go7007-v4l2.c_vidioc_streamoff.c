
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_file {int lock; struct go7007* go; } ;
struct go7007 {int dummy; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int go7007_streamoff (struct go7007*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct go7007_file *gofh = priv;
 struct go7007 *go = gofh->go;

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 mutex_lock(&gofh->lock);
 go7007_streamoff(go);
 mutex_unlock(&gofh->lock);

 return 0;
}
