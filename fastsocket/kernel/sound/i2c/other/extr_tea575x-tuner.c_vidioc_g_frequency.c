
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct snd_tea575x {int freq; } ;
struct file {int dummy; } ;


 int V4L2_TUNER_RADIO ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct snd_tea575x *tea = video_drvdata(file);

 f->type = V4L2_TUNER_RADIO;
 f->frequency = tea->freq;
 return 0;
}
