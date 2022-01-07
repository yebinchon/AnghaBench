
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct echoaudio {int input_clock; TYPE_1__* comm_page; scalar_t__ sample_rate; } ;
struct TYPE_2__ {int input_clock; } ;


 int DE_ACT (char*) ;
 int DSP_VC_UPDATE_CLOCKS ;




 int EINVAL ;
 int LAYLA20_CLOCK_INTERNAL ;
 int LAYLA20_CLOCK_SPDIF ;
 int LAYLA20_CLOCK_SUPER ;
 int LAYLA20_CLOCK_WORD ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le16 (int) ;
 int send_vector (struct echoaudio*,int ) ;
 int set_sample_rate (struct echoaudio*,scalar_t__) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock_source)
{
 u16 clock;
 u32 rate;

 DE_ACT(("set_input_clock:\n"));
 rate = 0;
 switch (clock_source) {
 case 131:
  DE_ACT(("Set Layla20 clock to INTERNAL\n"));
  rate = chip->sample_rate;
  clock = LAYLA20_CLOCK_INTERNAL;
  break;
 case 130:
  DE_ACT(("Set Layla20 clock to SPDIF\n"));
  clock = LAYLA20_CLOCK_SPDIF;
  break;
 case 128:
  DE_ACT(("Set Layla20 clock to WORD\n"));
  clock = LAYLA20_CLOCK_WORD;
  break;
 case 129:
  DE_ACT(("Set Layla20 clock to SUPER\n"));
  clock = LAYLA20_CLOCK_SUPER;
  break;
 default:
  DE_ACT(("Input clock 0x%x not supported for Layla24\n",
   clock_source));
  return -EINVAL;
 }
 chip->input_clock = clock_source;

 chip->comm_page->input_clock = cpu_to_le16(clock);
 clear_handshake(chip);
 send_vector(chip, DSP_VC_UPDATE_CLOCKS);

 if (rate)
  set_sample_rate(chip, rate);

 return 0;
}
