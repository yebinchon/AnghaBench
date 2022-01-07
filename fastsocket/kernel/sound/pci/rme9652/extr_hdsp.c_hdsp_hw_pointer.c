
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int period_bytes; int precise_ptr; } ;
typedef int snd_pcm_uframes_t ;


 int HDSP_BufferID ;
 int HDSP_BufferPositionMask ;
 int HDSP_statusRegister ;
 int hdsp_read (struct hdsp*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t hdsp_hw_pointer(struct hdsp *hdsp)
{
 int position;

 position = hdsp_read(hdsp, HDSP_statusRegister);

 if (!hdsp->precise_ptr)
  return (position & HDSP_BufferID) ? (hdsp->period_bytes / 4) : 0;

 position &= HDSP_BufferPositionMask;
 position /= 4;
 position &= (hdsp->period_bytes/2) - 1;
 return position;
}
