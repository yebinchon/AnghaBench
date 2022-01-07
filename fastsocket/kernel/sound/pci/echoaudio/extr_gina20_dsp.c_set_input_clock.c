
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct echoaudio {int input_clock; void* clock_state; TYPE_1__* comm_page; int sample_rate; int spdif_status; } ;
struct TYPE_2__ {int gd_spdif_status; void* gd_clock_state; } ;


 int DE_ACT (char*) ;
 int DSP_VC_SET_GD_AUDIO_STATE ;


 int EINVAL ;
 void* GD_CLOCK_SPDIFIN ;
 void* GD_CLOCK_UNDEF ;
 int GD_SPDIF_STATUS_NOCHANGE ;
 int GD_SPDIF_STATUS_UNDEF ;
 int clear_handshake (struct echoaudio*) ;
 int send_vector (struct echoaudio*,int ) ;
 int set_sample_rate (struct echoaudio*,int ) ;

__attribute__((used)) static int set_input_clock(struct echoaudio *chip, u16 clock)
{
 DE_ACT(("set_input_clock:\n"));

 switch (clock) {
 case 129:

  chip->clock_state = GD_CLOCK_UNDEF;
  chip->spdif_status = GD_SPDIF_STATUS_UNDEF;
  set_sample_rate(chip, chip->sample_rate);
  chip->input_clock = clock;
  DE_ACT(("Set Gina clock to INTERNAL\n"));
  break;
 case 128:
  chip->comm_page->gd_clock_state = GD_CLOCK_SPDIFIN;
  chip->comm_page->gd_spdif_status = GD_SPDIF_STATUS_NOCHANGE;
  clear_handshake(chip);
  send_vector(chip, DSP_VC_SET_GD_AUDIO_STATE);
  chip->clock_state = GD_CLOCK_SPDIFIN;
  DE_ACT(("Set Gina20 clock to SPDIF\n"));
  chip->input_clock = clock;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
