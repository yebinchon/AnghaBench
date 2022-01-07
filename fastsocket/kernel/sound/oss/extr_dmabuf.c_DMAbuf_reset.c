
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int open_mode; } ;


 int OPEN_READ ;
 int OPEN_WRITE ;
 TYPE_1__** audio_devs ;
 int dma_reset_input (int) ;
 int dma_reset_output (int) ;

void DMAbuf_reset(int dev)
{
 if (audio_devs[dev]->open_mode & OPEN_WRITE)
  dma_reset_output(dev);

 if (audio_devs[dev]->open_mode & OPEN_READ)
  dma_reset_input(dev);
}
