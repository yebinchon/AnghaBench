
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct file {int dummy; } ;
struct cx25821_fh {struct cx25821_dev* dev; } ;
struct cx25821_dev {int freq; } ;


 int cx25821_call_all (struct cx25821_dev*,int ,int ,struct v4l2_frequency*) ;
 int g_frequency ;
 int tuner ;

int vidioc_g_frequency(struct file *file, void *priv, struct v4l2_frequency *f)
{
 struct cx25821_fh *fh = priv;
 struct cx25821_dev *dev = fh->dev;

 f->frequency = dev->freq;

 cx25821_call_all(dev, tuner, g_frequency, f);

 return 0;
}
