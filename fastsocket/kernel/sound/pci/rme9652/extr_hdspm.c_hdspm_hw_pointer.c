
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int period_bytes; int precise_ptr; } ;
typedef int snd_pcm_uframes_t ;


 int HDSPM_BufferID ;
 int HDSPM_BufferPositionMask ;
 int HDSPM_statusRegister ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t hdspm_hw_pointer(struct hdspm * hdspm)
{
 int position;

 position = hdspm_read(hdspm, HDSPM_statusRegister);

 if (!hdspm->precise_ptr)
  return (position & HDSPM_BufferID) ?
   (hdspm->period_bytes / 4) : 0;
 position &= HDSPM_BufferPositionMask;
 position = ((position - 64) % (2 * hdspm->period_bytes)) / 4;

 return position;
}
