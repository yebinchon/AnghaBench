
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct firmware {int dummy; } ;
struct echoaudio {scalar_t__ device_id; struct firmware const* asic_code; scalar_t__ asic_loaded; } ;


 scalar_t__ DEVICE_ID_56361 ;
 int DSP_FNC_LOAD_MONA_EXTERNAL_ASIC ;
 int DSP_FNC_LOAD_MONA_PCI_CARD_ASIC ;
 size_t FW_MONA_2_ASIC ;
 size_t FW_MONA_301_1_ASIC48 ;
 size_t FW_MONA_361_1_ASIC48 ;
 int GML_48KHZ ;
 int GML_CONVERTER_ENABLE ;
 int TRUE ;
 struct firmware const* card_fw ;
 int check_asic_status (struct echoaudio*) ;
 int load_asic_generic (struct echoaudio*,int ,struct firmware const*) ;
 int mdelay (int) ;
 int write_control_reg (struct echoaudio*,int,int ) ;

__attribute__((used)) static int load_asic(struct echoaudio *chip)
{
 u32 control_reg;
 int err;
 const struct firmware *asic;

 if (chip->asic_loaded)
  return 0;

 mdelay(10);

 if (chip->device_id == DEVICE_ID_56361)
  asic = &card_fw[FW_MONA_361_1_ASIC48];
 else
  asic = &card_fw[FW_MONA_301_1_ASIC48];

 err = load_asic_generic(chip, DSP_FNC_LOAD_MONA_PCI_CARD_ASIC, asic);
 if (err < 0)
  return err;

 chip->asic_code = asic;
 mdelay(10);


 err = load_asic_generic(chip, DSP_FNC_LOAD_MONA_EXTERNAL_ASIC,
    &card_fw[FW_MONA_2_ASIC]);
 if (err < 0)
  return err;

 mdelay(10);
 err = check_asic_status(chip);



 if (!err) {
  control_reg = GML_CONVERTER_ENABLE | GML_48KHZ;
  err = write_control_reg(chip, control_reg, TRUE);
 }

 return err;
}
