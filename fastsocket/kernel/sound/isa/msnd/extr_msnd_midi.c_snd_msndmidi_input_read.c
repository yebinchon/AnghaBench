
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_msndmidi {int input_lock; TYPE_1__* dev; int substream_input; int mode; } ;
struct TYPE_2__ {int MIDQ; void* mappedbase; } ;


 int JQS_wHead ;
 int JQS_wSize ;
 int JQS_wTail ;
 int MIDQ_DATA_BUFF ;
 int MSNDMIDI_MODE_BIT_INPUT_TRIGGER ;
 int readw (int) ;
 int snd_rawmidi_receive (int ,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int writew (int,int) ;

void snd_msndmidi_input_read(void *mpuv)
{
 unsigned long flags;
 struct snd_msndmidi *mpu = mpuv;
 void *pwMIDQData = mpu->dev->mappedbase + MIDQ_DATA_BUFF;

 spin_lock_irqsave(&mpu->input_lock, flags);
 while (readw(mpu->dev->MIDQ + JQS_wTail) !=
        readw(mpu->dev->MIDQ + JQS_wHead)) {
  u16 wTmp, val;
  val = readw(pwMIDQData + 2 * readw(mpu->dev->MIDQ + JQS_wHead));

   if (test_bit(MSNDMIDI_MODE_BIT_INPUT_TRIGGER,
         &mpu->mode))
    snd_rawmidi_receive(mpu->substream_input,
          (unsigned char *)&val, 1);

  wTmp = readw(mpu->dev->MIDQ + JQS_wHead) + 1;
  if (wTmp > readw(mpu->dev->MIDQ + JQS_wSize))
   writew(0, mpu->dev->MIDQ + JQS_wHead);
  else
   writew(wTmp, mpu->dev->MIDQ + JQS_wHead);
 }
 spin_unlock_irqrestore(&mpu->input_lock, flags);
}
