
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct cx25821_dev {int lock; int freq; } ;


 int cx25821_call_all (struct cx25821_dev*,int ,int ,struct v4l2_frequency*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_frequency ;
 int tuner ;

int cx25821_set_freq(struct cx25821_dev *dev, struct v4l2_frequency *f)
{
 mutex_lock(&dev->lock);
 dev->freq = f->frequency;

 cx25821_call_all(dev, tuner, s_frequency, f);


 msleep(10);

 mutex_unlock(&dev->lock);

 return 0;
}
