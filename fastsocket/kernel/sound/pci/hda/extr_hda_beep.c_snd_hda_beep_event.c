
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hda_beep {int beep_work; int tone; int linear_tone; } ;




 int beep_linear_tone (struct hda_beep*,int) ;
 int beep_standard_tone (struct hda_beep*,int) ;
 struct hda_beep* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int snd_hda_beep_event(struct input_dev *dev, unsigned int type,
    unsigned int code, int hz)
{
 struct hda_beep *beep = input_get_drvdata(dev);

 switch (code) {
 case 129:
  if (hz)
   hz = 1000;
 case 128:
  if (beep->linear_tone)
   beep->tone = beep_linear_tone(beep, hz);
  else
   beep->tone = beep_standard_tone(beep, hz);
  break;
 default:
  return -1;
 }


 schedule_work(&beep->beep_work);
 return 0;
}
