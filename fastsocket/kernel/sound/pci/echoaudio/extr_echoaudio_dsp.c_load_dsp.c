
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct echoaudio {int* dsp_code; int comm_page_phys; void* bad_board; void* asic_loaded; } ;


 int CHI32_CONTROL_REG ;
 int CHI32_STATUS_REG ;
 int CHI32_STATUS_REG_HF3 ;
 int CHI32_STATUS_REG_HF4 ;
 int DE_INIT (char*) ;
 int DSP_FNC_SET_COMMPAGE_ADDR ;
 int DSP_VC_RESET ;
 int EIO ;
 void* FALSE ;
 void* TRUE ;
 int get_dsp_register (struct echoaudio*,int ) ;
 int install_resident_loader (struct echoaudio*) ;
 scalar_t__ read_sn (struct echoaudio*) ;
 scalar_t__ send_vector (struct echoaudio*,int ) ;
 int set_dsp_register (struct echoaudio*,int ,int) ;
 int udelay (int) ;
 scalar_t__ write_dsp (struct echoaudio*,int) ;

__attribute__((used)) static int load_dsp(struct echoaudio *chip, u16 *code)
{
 u32 address, data;
 int index, words, i;

 if (chip->dsp_code == code) {
  DE_INIT(("DSP is already loaded!\n"));
  return 0;
 }
 chip->bad_board = TRUE;
 chip->dsp_code = ((void*)0);
 chip->asic_loaded = FALSE;

 DE_INIT(("load_dsp: Set bad_board to TRUE\n"));
 if (send_vector(chip, DSP_VC_RESET) < 0) {
  DE_INIT(("LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\n"));
  return -EIO;
 }

 udelay(10);


 for (i = 0; i < 1000; i++) {
  if (get_dsp_register(chip, CHI32_STATUS_REG) &
      CHI32_STATUS_REG_HF3)
   break;
  udelay(10);
 }

 if (i == 1000) {
  DE_INIT(("load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\n"));
  return -EIO;
 }


 set_dsp_register(chip, CHI32_CONTROL_REG,
    get_dsp_register(chip, CHI32_CONTROL_REG) | 0x900);



 index = code[0];
 for (;;) {
  int block_type, mem_type;


  index++;


  block_type = code[index];
  if (block_type == 4)
   break;

  index++;


  mem_type = code[index++];


  words = code[index++];
  if (words == 0)
   break;


  address = ((u32)code[index] << 16) + code[index + 1];
  index += 2;

  if (write_dsp(chip, words) < 0) {
   DE_INIT(("load_dsp: failed to write number of DSP words\n"));
   return -EIO;
  }
  if (write_dsp(chip, address) < 0) {
   DE_INIT(("load_dsp: failed to write DSP address\n"));
   return -EIO;
  }
  if (write_dsp(chip, mem_type) < 0) {
   DE_INIT(("load_dsp: failed to write DSP memory type\n"));
   return -EIO;
  }

  for (i = 0; i < words; i++, index+=2) {
   data = ((u32)code[index] << 16) + code[index + 1];
   if (write_dsp(chip, data) < 0) {
    DE_INIT(("load_dsp: failed to write DSP data\n"));
    return -EIO;
   }
  }
 }

 if (write_dsp(chip, 0) < 0) {
  DE_INIT(("load_dsp: Failed to write final zero\n"));
  return -EIO;
 }
 udelay(10);

 for (i = 0; i < 5000; i++) {

  if (get_dsp_register(chip, CHI32_STATUS_REG) &
      CHI32_STATUS_REG_HF4) {
   set_dsp_register(chip, CHI32_CONTROL_REG,
      get_dsp_register(chip, CHI32_CONTROL_REG) & ~0x1b00);

   if (write_dsp(chip, DSP_FNC_SET_COMMPAGE_ADDR) < 0) {
    DE_INIT(("load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\n"));
    return -EIO;
   }

   if (write_dsp(chip, chip->comm_page_phys) < 0) {
    DE_INIT(("load_dsp: Failed to write comm page address\n"));
    return -EIO;
   }





   if (read_sn(chip) < 0) {
    DE_INIT(("load_dsp: Failed to read serial number\n"));
    return -EIO;
   }

   chip->dsp_code = code;
   chip->bad_board = FALSE;
   DE_INIT(("load_dsp: OK!\n"));
   return 0;
  }
  udelay(100);
 }

 DE_INIT(("load_dsp: DSP load timed out waiting for HF4\n"));
 return -EIO;
}
