
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {scalar_t__ audio_enabled; int video_dev; scalar_t__ i2c_adapter_online; int i2c_adapter; } ;


 int go7007_snd_remove (struct go7007*) ;
 int go7007_v4l2_remove (struct go7007*) ;
 scalar_t__ i2c_del_adapter (int *) ;
 int v4l2_err (int ,char*) ;

void go7007_remove(struct go7007 *go)
{
 if (go->i2c_adapter_online) {
  if (i2c_del_adapter(&go->i2c_adapter) == 0)
   go->i2c_adapter_online = 0;
  else
   v4l2_err(go->video_dev,
    "error removing I2C adapter!\n");
 }

 if (go->audio_enabled)
  go7007_snd_remove(go);
 go7007_v4l2_remove(go);
}
