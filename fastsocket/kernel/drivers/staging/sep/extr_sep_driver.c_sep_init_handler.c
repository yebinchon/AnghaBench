
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_driver_init_t {unsigned long message_size_in_words; scalar_t__ message_addr; } ;
struct sep_device {int dummy; } ;


 int HW_CC_SRAM_BASE_ADDRESS ;
 int HW_HOST_HOST_SEP_GPR0_REG_ADDR ;
 int HW_HOST_SEP_HOST_GPR0_REG_ADDR ;
 int HW_HOST_SEP_HOST_GPR3_REG_ADDR ;
 int HW_SRAM_ADDR_REG_ADDR ;
 int HW_SRAM_DATA_REG_ADDR ;
 unsigned long copy_from_user (struct sep_driver_init_t*,void*,int) ;
 int dbg (char*) ;
 int edbg (char*,...) ;
 int get_user (unsigned long,unsigned long*) ;
 unsigned long sep_read_reg (struct sep_device*,int) ;
 int sep_wait_sram_write (struct sep_device*) ;
 int sep_write_reg (struct sep_device*,int ,int) ;

__attribute__((used)) static int sep_init_handler(struct sep_device *sep, unsigned long arg)
{
 unsigned long message_word;
 unsigned long *message_ptr;
 struct sep_driver_init_t command_args;
 unsigned long counter;
 unsigned long error;
 unsigned long reg_val;

 dbg("SEP Driver:--------> sep_init_handler start\n");
 error = 0;

 error = copy_from_user(&command_args, (void *) arg, sizeof(struct sep_driver_init_t));

 dbg("SEP Driver:--------> sep_init_handler - finished copy_from_user \n");

 if (error)
  goto end_function;




 dbg("SEP Driver:--------> sep_init_handler - finished sep_configure_dma_burst \n");

 message_ptr = (unsigned long *) command_args.message_addr;


 sep_write_reg(sep, HW_SRAM_ADDR_REG_ADDR, HW_CC_SRAM_BASE_ADDRESS);

 for (counter = 0; counter < command_args.message_size_in_words; counter++, message_ptr++) {
  get_user(message_word, message_ptr);

  sep_write_reg(sep, HW_SRAM_DATA_REG_ADDR, message_word);
  edbg("SEP Driver:message_word is %lu\n", message_word);

  sep_wait_sram_write(sep);
 }
 dbg("SEP Driver:--------> sep_init_handler - finished getting messages from user space\n");

 sep_write_reg(sep, HW_HOST_HOST_SEP_GPR0_REG_ADDR, 0x1);

 do
  reg_val = sep_read_reg(sep, HW_HOST_SEP_HOST_GPR3_REG_ADDR);
 while (!(reg_val & 0xFFFFFFFD));

 dbg("SEP Driver:--------> sep_init_handler - finished waiting for reg_val & 0xFFFFFFFD \n");


 if (reg_val == 0x1) {
  edbg("SEP Driver:init failed\n");

  error = sep_read_reg(sep, 0x8060);
  edbg("SEP Driver:sw monitor is %lu\n", error);


  error = sep_read_reg(sep, HW_HOST_SEP_HOST_GPR0_REG_ADDR);
  edbg("SEP Driver:error is %lu\n", error);
 }
end_function:
 dbg("SEP Driver:<-------- sep_init_handler end\n");
 return error;

}
