
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct audio_operations {int poll_sleeper; } ;
typedef int poll_table ;


 struct audio_operations** audio_devs ;
 unsigned int poll_input (struct file*,int,int *) ;
 unsigned int poll_output (struct file*,int,int *) ;
 int poll_wait (struct file*,int *,int *) ;

unsigned int DMAbuf_poll(struct file * file, int dev, poll_table *wait)
{
 struct audio_operations *adev = audio_devs[dev];
 poll_wait(file, &adev->poll_sleeper, wait);
 return poll_input(file, dev, wait) | poll_output(file, dev, wait);
}
