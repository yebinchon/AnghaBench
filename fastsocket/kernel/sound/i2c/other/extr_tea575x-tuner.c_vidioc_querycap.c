
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct snd_tea575x {scalar_t__ tea5759; } ;
struct file {int dummy; } ;


 int RADIO_VERSION ;
 int V4L2_CAP_TUNER ;
 int sprintf (int ,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,char*,int) ;
 struct snd_tea575x* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct snd_tea575x *tea = video_drvdata(file);

 strcpy(v->card, tea->tea5759 ? "TEA5759" : "TEA5757");
 strlcpy(v->driver, "tea575x-tuner", sizeof(v->driver));
 strlcpy(v->card, "Maestro Radio", sizeof(v->card));
 sprintf(v->bus_info, "PCI");
 v->version = RADIO_VERSION;
 v->capabilities = V4L2_CAP_TUNER;
 return 0;
}
