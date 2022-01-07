
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int dummy; } ;


 int HDSP_fifoStatus ;
 int hdsp_read (struct hdsp*,int ) ;
 int snd_printk (char*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int hdsp_fifo_wait(struct hdsp *hdsp, int count, int timeout)
{
 int i;





 for (i = 0; i < timeout; i++) {

  if ((int)(hdsp_read (hdsp, HDSP_fifoStatus) & 0xff) <= count)
   return 0;





  udelay (100);
 }

 snd_printk ("Hammerfall-DSP: wait for FIFO status <= %d failed after %d iterations\n",
      count, timeout);
 return -1;
}
