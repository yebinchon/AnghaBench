
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct firmware {scalar_t__ data; } ;
struct echoaudio {int dsp_code_to_load; int * dsp_code; int comm_page; } ;


 int EPERM ;
 int check_asic_status (struct echoaudio*) ;
 int free_firmware (struct firmware const*) ;
 int get_firmware (struct firmware const**,int ,struct echoaudio*) ;
 int load_asic (struct echoaudio*) ;
 int load_dsp (struct echoaudio*,int *) ;
 int restore_dsp_rettings (struct echoaudio*) ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static int load_firmware(struct echoaudio *chip)
{
 const struct firmware *fw;
 int box_type, err;

 if (snd_BUG_ON(!chip->dsp_code_to_load || !chip->comm_page))
  return -EPERM;


 if (chip->dsp_code) {
  if ((box_type = check_asic_status(chip)) >= 0)
   return box_type;

  chip->dsp_code = ((void*)0);
 }

 if ((err = get_firmware(&fw, chip->dsp_code_to_load, chip)) < 0)
  return err;
 err = load_dsp(chip, (u16 *)fw->data);
 free_firmware(fw);
 if (err < 0)
  return err;

 if ((box_type = load_asic(chip)) < 0)
  return box_type;

 if ((err = restore_dsp_rettings(chip)) < 0)
  return err;

 return box_type;
}
