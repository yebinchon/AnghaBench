
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vwsnd_dev_t ;


 unsigned int LI_INTR_COMM2_UNDERFLOW ;
 unsigned int WRITE_INTR_MASK ;
 int pcm_output (int *,int,int ) ;

__attribute__((used)) static void vwsnd_audio_write_intr(vwsnd_dev_t *devc, unsigned int status)
{
 int underflown = status & LI_INTR_COMM2_UNDERFLOW;

 if (status & WRITE_INTR_MASK)
  pcm_output(devc, underflown, 0);
}
