
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct cx25821_fh {int dummy; } ;


 int get_queue (struct cx25821_fh*) ;
 int videobuf_querybuf (int ,struct v4l2_buffer*) ;

int vidioc_querybuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct cx25821_fh *fh = priv;
 return videobuf_querybuf(get_queue(fh), p);
}
