
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int rxsubchans; int signal; int audmode; int capability; int rangehigh; int rangelow; int type; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FREQ_HI ;
 int FREQ_LO ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 if (v->index > 0)
  return -EINVAL;

 strcpy(v->name, "FM");
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = FREQ_LO;
 v->rangehigh = FREQ_HI;
 v->rxsubchans = V4L2_TUNER_SUB_MONO|V4L2_TUNER_SUB_STEREO;
 v->capability = V4L2_TUNER_CAP_LOW;
 v->audmode = V4L2_TUNER_MODE_MONO;
 v->signal = 0xffff;
 return 0;
}
