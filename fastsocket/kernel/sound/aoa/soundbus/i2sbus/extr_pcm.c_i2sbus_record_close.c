
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;
struct i2sbus_dev {TYPE_1__ in; } ;


 int EINVAL ;
 int i2sbus_pcm_close (struct i2sbus_dev*,int) ;
 struct i2sbus_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int i2sbus_record_close(struct snd_pcm_substream *substream)
{
 struct i2sbus_dev *i2sdev = snd_pcm_substream_chip(substream);
 int err;

 if (!i2sdev)
  return -EINVAL;
 if (i2sdev->in.substream != substream)
  return -EINVAL;
 err = i2sbus_pcm_close(i2sdev, 1);
 if (!err)
  i2sdev->in.substream = ((void*)0);
 return err;
}
