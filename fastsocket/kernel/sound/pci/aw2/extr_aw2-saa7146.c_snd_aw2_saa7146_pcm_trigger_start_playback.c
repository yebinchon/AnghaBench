
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int ACON1 ;
 int MC1 ;
 unsigned int READREG (int ) ;
 int TR_E_A1_OUT ;
 int TR_E_A2_OUT ;
 int WRITEREG (unsigned int,int ) ;
 int WS1_CTRL ;
 int WS2_CTRL ;

void snd_aw2_saa7146_pcm_trigger_start_playback(struct snd_aw2_saa7146 *chip,
      int stream_number)
{
 unsigned int acon1 = 0;


 acon1 = READREG(ACON1);
 if (stream_number == 0) {
  WRITEREG((TR_E_A2_OUT << 16) | TR_E_A2_OUT, MC1);


  acon1 |= 2 * WS2_CTRL;
  WRITEREG(acon1, ACON1);

 } else if (stream_number == 1) {
  WRITEREG((TR_E_A1_OUT << 16) | TR_E_A1_OUT, MC1);


  acon1 |= 1 * WS1_CTRL;
  WRITEREG(acon1, ACON1);
 }
}
