
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct firmware {int dummy; } ;
struct echoaudio {scalar_t__ device_id; struct firmware const* asic_code; scalar_t__ asic_loaded; } ;


 scalar_t__ DEVICE_ID_56361 ;
 int DE_INIT (char*) ;
 int DSP_FNC_LOAD_GINA24_ASIC ;
 size_t FW_GINA24_301_ASIC ;
 size_t FW_GINA24_361_ASIC ;
 int GML_48KHZ ;
 int GML_CONVERTER_ENABLE ;
 int TRUE ;
 struct firmware* card_fw ;
 int check_asic_status (struct echoaudio*) ;
 int load_asic_generic (struct echoaudio*,int ,struct firmware const*) ;
 int mdelay (int) ;
 int write_control_reg (struct echoaudio*,int,int ) ;

__attribute__((used)) static int load_asic(struct echoaudio *chip)
{
 u32 control_reg;
 int err;
 const struct firmware *fw;

 if (chip->asic_loaded)
  return 1;


 mdelay(10);


 if (chip->device_id == DEVICE_ID_56361)
  fw = &card_fw[FW_GINA24_361_ASIC];
 else
  fw = &card_fw[FW_GINA24_301_ASIC];

 if ((err = load_asic_generic(chip, DSP_FNC_LOAD_GINA24_ASIC, fw)) < 0)
  return err;

 chip->asic_code = fw;


 mdelay(10);

 err = check_asic_status(chip);



 if (!err) {
  control_reg = GML_CONVERTER_ENABLE | GML_48KHZ;
  err = write_control_reg(chip, control_reg, TRUE);
 }
 DE_INIT(("load_asic() done\n"));
 return err;
}
