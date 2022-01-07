
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pcm_info {TYPE_2__* substream; scalar_t__ frame_count; } ;
struct i2sbus_dev {TYPE_1__* intfregs; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
struct TYPE_6__ {scalar_t__ buffer_size; } ;
struct TYPE_5__ {TYPE_3__* runtime; } ;
struct TYPE_4__ {int frame_count; } ;


 int get_pcm_info (struct i2sbus_dev*,int,struct pcm_info**,int *) ;
 scalar_t__ in_le32 (int *) ;

__attribute__((used)) static snd_pcm_uframes_t i2sbus_pcm_pointer(struct i2sbus_dev *i2sdev, int in)
{
 struct pcm_info *pi;
 u32 fc;

 get_pcm_info(i2sdev, in, &pi, ((void*)0));

 fc = in_le32(&i2sdev->intfregs->frame_count);
 fc = fc - pi->frame_count;

 if (fc >= pi->substream->runtime->buffer_size)
  fc %= pi->substream->runtime->buffer_size;
 return fc;
}
