
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int * asic_code; scalar_t__ asic_loaded; } ;


 int DE_INIT (char*) ;
 int DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC ;
 int DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC ;
 int FALSE ;
 size_t FW_LAYLA24_1_ASIC ;
 size_t FW_LAYLA24_2S_ASIC ;
 int GML_48KHZ ;
 int GML_CONVERTER_ENABLE ;
 int TRUE ;
 int * card_fw ;
 int check_asic_status (struct echoaudio*) ;
 int load_asic_generic (struct echoaudio*,int ,int *) ;
 int mdelay (int) ;
 int write_control_reg (struct echoaudio*,int,int ) ;

__attribute__((used)) static int load_asic(struct echoaudio *chip)
{
 int err;

 if (chip->asic_loaded)
  return 1;

 DE_INIT(("load_asic\n"));


 mdelay(10);


 err = load_asic_generic(chip, DSP_FNC_LOAD_LAYLA24_PCI_CARD_ASIC,
    &card_fw[FW_LAYLA24_1_ASIC]);
 if (err < 0)
  return err;

 chip->asic_code = &card_fw[FW_LAYLA24_2S_ASIC];


 mdelay(10);


 err = load_asic_generic(chip, DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC,
    &card_fw[FW_LAYLA24_2S_ASIC]);
 if (err < 0)
  return FALSE;


 mdelay(10);


 err = check_asic_status(chip);



 if (!err)
  err = write_control_reg(chip, GML_CONVERTER_ENABLE | GML_48KHZ,
     TRUE);

 DE_INIT(("load_asic() done\n"));
 return err;
}
