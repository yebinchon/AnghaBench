
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int digital_in_automute; int input_clock; } ;


 int DE_ACT (char*) ;
 int set_input_clock (struct echoaudio*,int ) ;

__attribute__((used)) static int set_input_auto_mute(struct echoaudio *chip, int automute)
{
 DE_ACT(("set_input_auto_mute %d\n", automute));

 chip->digital_in_automute = automute;



 return set_input_clock(chip, chip->input_clock);
}
