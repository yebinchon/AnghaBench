
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct echoaudio {int asic_loaded; } ;


 scalar_t__ ASIC_ALREADY_LOADED ;
 int DE_INIT (char*) ;
 int DSP_VC_TEST_ASIC ;
 int EIO ;
 int FALSE ;
 scalar_t__ read_dsp (struct echoaudio*,scalar_t__*) ;
 int send_vector (struct echoaudio*,int ) ;

__attribute__((used)) static int check_asic_status(struct echoaudio *chip)
{
 u32 asic_status;

 send_vector(chip, DSP_VC_TEST_ASIC);



 if (read_dsp(chip, &asic_status) < 0) {
  DE_INIT(("check_asic_status: failed on read_dsp\n"));
  chip->asic_loaded = FALSE;
  return -EIO;
 }

 chip->asic_loaded = (asic_status == ASIC_ALREADY_LOADED);
 return chip->asic_loaded ? 0 : -EIO;
}
