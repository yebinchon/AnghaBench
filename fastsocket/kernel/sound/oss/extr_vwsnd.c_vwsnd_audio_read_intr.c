
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vwsnd_dev_t ;


 unsigned int LI_INTR_COMM1_OVERFLOW ;
 unsigned int READ_INTR_MASK ;
 int pcm_input (int *,int,int ) ;

__attribute__((used)) static void vwsnd_audio_read_intr(vwsnd_dev_t *devc, unsigned int status)
{
 int overflown = status & LI_INTR_COMM1_OVERFLOW;

 if (status & READ_INTR_MASK)
  pcm_input(devc, overflown, 0);
}
