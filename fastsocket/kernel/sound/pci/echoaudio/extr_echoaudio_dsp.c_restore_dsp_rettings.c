
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {int output_clock; int input_clock; scalar_t__ meters_enabled; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int handshake; int gd_spdif_status; int gd_clock_state; } ;


 int DE_INIT (char*) ;
 int DSP_VC_METERS_ON ;
 int DSP_VC_UPDATE_FLAGS ;
 int EIO ;
 int GD_CLOCK_UNDEF ;
 int GD_SPDIF_STATUS_UNDEF ;
 int check_asic_status (struct echoaudio*) ;
 int clear_handshake (struct echoaudio*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ set_input_clock (struct echoaudio*,int ) ;
 scalar_t__ set_output_clock (struct echoaudio*,int ) ;
 int set_sample_rate (struct echoaudio*,int ) ;
 scalar_t__ update_input_line_level (struct echoaudio*) ;
 scalar_t__ update_output_line_level (struct echoaudio*) ;
 scalar_t__ update_vmixer_level (struct echoaudio*) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int restore_dsp_rettings(struct echoaudio *chip)
{
 int err;
 DE_INIT(("restore_dsp_settings\n"));

 if ((err = check_asic_status(chip)) < 0)
  return err;


 chip->comm_page->gd_clock_state = GD_CLOCK_UNDEF;
 chip->comm_page->gd_spdif_status = GD_SPDIF_STATUS_UNDEF;
 chip->comm_page->handshake = 0xffffffff;

 if ((err = set_sample_rate(chip, chip->sample_rate)) < 0)
  return err;

 if (chip->meters_enabled)
  if (send_vector(chip, DSP_VC_METERS_ON) < 0)
   return -EIO;
 if (update_output_line_level(chip) < 0)
  return -EIO;

 if (update_input_line_level(chip) < 0)
  return -EIO;






 if (wait_handshake(chip) < 0)
  return -EIO;
 clear_handshake(chip);

 DE_INIT(("restore_dsp_rettings done\n"));
 return send_vector(chip, DSP_VC_UPDATE_FLAGS);
}
