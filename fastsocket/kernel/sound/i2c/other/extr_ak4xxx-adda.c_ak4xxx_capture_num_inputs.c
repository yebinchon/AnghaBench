
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_akm4xxx {TYPE_1__* adc_info; } ;
struct TYPE_2__ {char** input_names; } ;


 int AK5365_NUM_INPUTS ;

__attribute__((used)) static int ak4xxx_capture_num_inputs(struct snd_akm4xxx *ak, int mixer_ch)
{
 int num_names;
 const char **input_names;

 input_names = ak->adc_info[mixer_ch].input_names;
 num_names = 0;
 while (num_names < AK5365_NUM_INPUTS && input_names[num_names])
  ++num_names;
 return num_names;
}
