
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {unsigned char (* read ) (struct snd_mpu401*,int ) ;int substream_input; int mode; } ;


 int MPU401D (struct snd_mpu401*) ;
 int MPU401_MODE_BIT_INPUT_TRIGGER ;
 int snd_mpu401_input_avail (struct snd_mpu401*) ;
 int snd_rawmidi_receive (int ,unsigned char*,int) ;
 unsigned char stub1 (struct snd_mpu401*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void snd_mpu401_uart_input_read(struct snd_mpu401 * mpu)
{
 int max = 128;
 unsigned char byte;

 while (max-- > 0) {
  if (! snd_mpu401_input_avail(mpu))
   break;
  byte = mpu->read(mpu, MPU401D(mpu));
  if (test_bit(MPU401_MODE_BIT_INPUT_TRIGGER, &mpu->mode))
   snd_rawmidi_receive(mpu->substream_input, &byte, 1);
 }
}
