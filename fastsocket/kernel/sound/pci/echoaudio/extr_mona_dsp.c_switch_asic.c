
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct echoaudio {scalar_t__ device_id; struct firmware const* asic_code; } ;


 scalar_t__ DEVICE_ID_56361 ;
 int DSP_FNC_LOAD_MONA_PCI_CARD_ASIC ;
 size_t FW_MONA_301_1_ASIC48 ;
 size_t FW_MONA_301_1_ASIC96 ;
 size_t FW_MONA_361_1_ASIC48 ;
 size_t FW_MONA_361_1_ASIC96 ;
 struct firmware* card_fw ;
 int load_asic_generic (struct echoaudio*,int ,struct firmware const*) ;

__attribute__((used)) static int switch_asic(struct echoaudio *chip, char double_speed)
{
 const struct firmware *asic;
 int err;




 if (chip->device_id == DEVICE_ID_56361) {
  if (double_speed)
   asic = &card_fw[FW_MONA_361_1_ASIC96];
  else
   asic = &card_fw[FW_MONA_361_1_ASIC48];
 } else {
  if (double_speed)
   asic = &card_fw[FW_MONA_301_1_ASIC96];
  else
   asic = &card_fw[FW_MONA_301_1_ASIC48];
 }

 if (asic != chip->asic_code) {

  err = load_asic_generic(chip, DSP_FNC_LOAD_MONA_PCI_CARD_ASIC,
     asic);
  if (err < 0)
   return err;
  chip->asic_code = asic;
 }

 return 0;
}
