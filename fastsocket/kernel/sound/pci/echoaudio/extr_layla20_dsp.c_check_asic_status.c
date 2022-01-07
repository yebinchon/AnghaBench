
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct echoaudio {int asic_loaded; } ;


 scalar_t__ ASIC_ALREADY_LOADED ;
 int DE_ACT (char*) ;
 int DSP_VC_TEST_ASIC ;
 int EIO ;
 int FALSE ;
 int TRUE ;
 scalar_t__ read_dsp (struct echoaudio*,scalar_t__*) ;
 int send_vector (struct echoaudio*,int ) ;

__attribute__((used)) static int check_asic_status(struct echoaudio *chip)
{
 u32 asic_status;
 int goodcnt, i;

 chip->asic_loaded = FALSE;
 for (i = goodcnt = 0; i < 5; i++) {
  send_vector(chip, DSP_VC_TEST_ASIC);



  if (read_dsp(chip, &asic_status) < 0) {
   DE_ACT(("check_asic_status: failed on read_dsp\n"));
   return -EIO;
  }

  if (asic_status == ASIC_ALREADY_LOADED) {
   if (++goodcnt == 3) {
    chip->asic_loaded = TRUE;
    return 0;
   }
  }
 }
 return -EIO;
}
