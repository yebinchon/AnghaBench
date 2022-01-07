
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {scalar_t__ _audio_is_running; } ;


 int cx25821_free_memory_audio (struct cx25821_dev*) ;
 int cx25821_stop_upstream_audio (struct cx25821_dev*) ;

void cx25821_free_mem_upstream_audio(struct cx25821_dev *dev)
{
 if (dev->_audio_is_running) {
  cx25821_stop_upstream_audio(dev);
 }

 cx25821_free_memory_audio(dev);
}
