
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct echoaudio {scalar_t__ clock_state; scalar_t__ spdif_status; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int gd_resampler_state; scalar_t__ gd_spdif_status; scalar_t__ gd_clock_state; int sample_rate; } ;


 int DSP_VC_SET_GD_AUDIO_STATE ;
 int EIO ;
 scalar_t__ GD_CLOCK_44 ;
 scalar_t__ GD_CLOCK_48 ;
 scalar_t__ GD_CLOCK_NOCHANGE ;
 scalar_t__ GD_SPDIF_STATUS_44 ;
 scalar_t__ GD_SPDIF_STATUS_48 ;
 scalar_t__ GD_SPDIF_STATUS_NOCHANGE ;
 int clear_handshake (struct echoaudio*) ;
 int cpu_to_le32 (int) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int set_sample_rate(struct echoaudio *chip, u32 rate)
{
 u8 clock_state, spdif_status;

 if (wait_handshake(chip))
  return -EIO;

 switch (rate) {
 case 44100:
  clock_state = GD_CLOCK_44;
  spdif_status = GD_SPDIF_STATUS_44;
  break;
 case 48000:
  clock_state = GD_CLOCK_48;
  spdif_status = GD_SPDIF_STATUS_48;
  break;
 default:
  clock_state = GD_CLOCK_NOCHANGE;
  spdif_status = GD_SPDIF_STATUS_NOCHANGE;
  break;
 }

 if (chip->clock_state == clock_state)
  clock_state = GD_CLOCK_NOCHANGE;
 if (spdif_status == chip->spdif_status)
  spdif_status = GD_SPDIF_STATUS_NOCHANGE;

 chip->comm_page->sample_rate = cpu_to_le32(rate);
 chip->comm_page->gd_clock_state = clock_state;
 chip->comm_page->gd_spdif_status = spdif_status;
 chip->comm_page->gd_resampler_state = 3;


 if (clock_state != GD_CLOCK_NOCHANGE)
  chip->clock_state = clock_state;
 if (spdif_status != GD_SPDIF_STATUS_NOCHANGE)
  chip->spdif_status = spdif_status;
 chip->sample_rate = rate;

 clear_handshake(chip);
 return send_vector(chip, DSP_VC_SET_GD_AUDIO_STATE);
}
