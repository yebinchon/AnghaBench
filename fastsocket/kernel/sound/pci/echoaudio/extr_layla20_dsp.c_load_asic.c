
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {scalar_t__ asic_loaded; } ;


 int DSP_FNC_LOAD_LAYLA_ASIC ;
 size_t FW_LAYLA20_ASIC ;
 int * card_fw ;
 int check_asic_status (struct echoaudio*) ;
 int load_asic_generic (struct echoaudio*,int ,int *) ;

__attribute__((used)) static int load_asic(struct echoaudio *chip)
{
 int err;

 if (chip->asic_loaded)
  return 0;

 err = load_asic_generic(chip, DSP_FNC_LOAD_LAYLA_ASIC,
    &card_fw[FW_LAYLA20_ASIC]);
 if (err < 0)
  return err;


 return check_asic_status(chip);
}
