
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int area; } ;
struct TYPE_3__ {int format; } ;
struct snd_harmony {TYPE_2__ sdma; TYPE_1__ st; } ;


 int HARMONY_DF_16BIT_LINEAR ;
 int HARMONY_DF_8BIT_ALAW ;
 int HARMONY_DF_8BIT_ULAW ;
 int SILENCE_BUFSZ ;



 int snd_pcm_format_physical_width (int) ;
 int snd_pcm_format_set_silence (int,int ,int) ;

__attribute__((used)) static int
snd_harmony_set_data_format(struct snd_harmony *h, int fmt, int force)
{
 int o = h->st.format;
 int n;

 switch(fmt) {
 case 128:
  n = HARMONY_DF_16BIT_LINEAR;
  break;
 case 130:
  n = HARMONY_DF_8BIT_ALAW;
  break;
 case 129:
  n = HARMONY_DF_8BIT_ULAW;
  break;
 default:
  n = HARMONY_DF_16BIT_LINEAR;
  break;
 }

 if (force || o != n) {
  snd_pcm_format_set_silence(fmt, h->sdma.area, SILENCE_BUFSZ /
        (snd_pcm_format_physical_width(fmt)
         / 8));
 }

 return n;
}
