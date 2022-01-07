
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ frequency; } ;
struct snd_tea575x {scalar_t__ freq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ FREQ_HI ;
 scalar_t__ FREQ_LO ;
 int snd_tea575x_set_freq (struct snd_tea575x*) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct snd_tea575x *tea = video_drvdata(file);

 if (f->frequency < FREQ_LO || f->frequency > FREQ_HI)
  return -EINVAL;

 tea->freq = f->frequency;

 snd_tea575x_set_freq(tea);

 return 0;
}
