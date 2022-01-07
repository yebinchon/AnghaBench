
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct echoaudio {int device_id; int subdevice_id; int input_clock_types; void* bad_board; void* has_midi; void* asic_loaded; int * dsp_code_to_load; } ;


 int DE_INIT (char*) ;
 int ECHO_CLOCK_BIT_INTERNAL ;
 int ECHO_CLOCK_BIT_SPDIF ;
 int ENODEV ;
 void* FALSE ;
 size_t FW_MIA_DSP ;
 int MIA ;
 int MIA_MIDI_REV ;
 void* TRUE ;
 int * card_fw ;
 int init_dsp_comm_page (struct echoaudio*) ;
 int init_line_levels (struct echoaudio*) ;
 int load_firmware (struct echoaudio*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int init_hw(struct echoaudio *chip, u16 device_id, u16 subdevice_id)
{
 int err;

 DE_INIT(("init_hw() - Mia\n"));
 if (snd_BUG_ON((subdevice_id & 0xfff0) != MIA))
  return -ENODEV;

 if ((err = init_dsp_comm_page(chip))) {
  DE_INIT(("init_hw - could not initialize DSP comm page\n"));
  return err;
 }

 chip->device_id = device_id;
 chip->subdevice_id = subdevice_id;
 chip->bad_board = TRUE;
 chip->dsp_code_to_load = &card_fw[FW_MIA_DSP];


 chip->asic_loaded = TRUE;
 if ((subdevice_id & 0x0000f) == MIA_MIDI_REV)
  chip->has_midi = TRUE;
 chip->input_clock_types = ECHO_CLOCK_BIT_INTERNAL |
  ECHO_CLOCK_BIT_SPDIF;

 if ((err = load_firmware(chip)) < 0)
  return err;
 chip->bad_board = FALSE;

 if ((err = init_line_levels(chip)))
  return err;

 DE_INIT(("init_hw done\n"));
 return err;
}
