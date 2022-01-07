
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {int callback_parm; int (* audio_callback ) (int,int ) ;} ;
struct audio_operations {int poll_sleeper; int out_sleeper; } ;


 struct audio_operations** audio_devs ;
 int stub1 (int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void finish_output_interrupt(int dev, struct dma_buffparms *dmap)
{
 struct audio_operations *adev = audio_devs[dev];

 if (dmap->audio_callback != ((void*)0))
  dmap->audio_callback(dev, dmap->callback_parm);
 wake_up(&adev->out_sleeper);
 wake_up(&adev->poll_sleeper);
}
