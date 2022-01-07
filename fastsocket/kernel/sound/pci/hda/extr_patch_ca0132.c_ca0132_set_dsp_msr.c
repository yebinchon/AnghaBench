
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int CONTROL_FLAG_ADC_B_96KHZ ;
 int CONTROL_FLAG_ADC_C_96KHZ ;
 int CONTROL_FLAG_DAC_96KHZ ;
 int CONTROL_FLAG_DSP_96KHZ ;
 int CONTROL_FLAG_SRC_CLOCK_196MHZ ;
 int CONTROL_FLAG_SRC_RATE_96KHZ ;
 int MEM_CONNID_MICIN1 ;
 int MEM_CONNID_MICOUT1 ;
 int MEM_CONNID_WUH ;
 int SR_48_000 ;
 int SR_96_000 ;
 int chipio_set_conn_rate (struct hda_codec*,int ,int ) ;
 int chipio_set_control_flag (struct hda_codec*,int ,int) ;

__attribute__((used)) static void ca0132_set_dsp_msr(struct hda_codec *codec, bool is96k)
{
 chipio_set_control_flag(codec, CONTROL_FLAG_DSP_96KHZ, is96k);
 chipio_set_control_flag(codec, CONTROL_FLAG_DAC_96KHZ, is96k);
 chipio_set_control_flag(codec, CONTROL_FLAG_SRC_RATE_96KHZ, is96k);
 chipio_set_control_flag(codec, CONTROL_FLAG_SRC_CLOCK_196MHZ, is96k);
 chipio_set_control_flag(codec, CONTROL_FLAG_ADC_B_96KHZ, is96k);
 chipio_set_control_flag(codec, CONTROL_FLAG_ADC_C_96KHZ, is96k);

 chipio_set_conn_rate(codec, MEM_CONNID_MICIN1, SR_96_000);
 chipio_set_conn_rate(codec, MEM_CONNID_MICOUT1, SR_96_000);
 chipio_set_conn_rate(codec, MEM_CONNID_WUH, SR_48_000);
}
