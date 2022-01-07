
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int offset; } ;
struct v4l2_buffer {scalar_t__ type; unsigned int index; unsigned int length; TYPE_2__ m; int memory; int flags; } ;
struct go7007_file {unsigned int buf_count; int lock; TYPE_1__* bufs; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int state; scalar_t__ mapped; } ;




 int EINVAL ;
 unsigned int GO7007_BUF_SIZE ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_BUF_FLAG_QUEUED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int memset (struct v4l2_buffer*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_querybuf(struct file *file, void *priv,
      struct v4l2_buffer *buf)
{
 struct go7007_file *gofh = priv;
 int retval = -EINVAL;
 unsigned int index;

 if (buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return retval;

 index = buf->index;

 mutex_lock(&gofh->lock);
 if (index >= gofh->buf_count)
  goto unlock_and_return;

 memset(buf, 0, sizeof(*buf));
 buf->index = index;
 buf->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 switch (gofh->bufs[index].state) {
 case 128:
  buf->flags = V4L2_BUF_FLAG_QUEUED;
  break;
 case 129:
  buf->flags = V4L2_BUF_FLAG_DONE;
  break;
 default:
  buf->flags = 0;
 }

 if (gofh->bufs[index].mapped)
  buf->flags |= V4L2_BUF_FLAG_MAPPED;
 buf->memory = V4L2_MEMORY_MMAP;
 buf->m.offset = index * GO7007_BUF_SIZE;
 buf->length = GO7007_BUF_SIZE;
 mutex_unlock(&gofh->lock);

 return 0;

unlock_and_return:
 mutex_unlock(&gofh->lock);
 return retval;
}
