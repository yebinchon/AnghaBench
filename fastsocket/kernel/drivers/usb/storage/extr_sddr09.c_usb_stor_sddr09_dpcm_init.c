
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; } ;


 int USB_DIR_IN ;
 int US_DEBUGP (char*,...) ;
 int printk (char*,...) ;
 int sddr09_common_init (struct us_data*) ;
 int sddr09_request_sense (struct us_data*,unsigned char*,int) ;
 int sddr09_send_command (struct us_data*,int,int ,unsigned char*,int) ;

__attribute__((used)) static int
usb_stor_sddr09_dpcm_init(struct us_data *us) {
 int result;
 unsigned char *data = us->iobuf;

 result = sddr09_common_init(us);
 if (result)
  return result;

 result = sddr09_send_command(us, 0x01, USB_DIR_IN, data, 2);
 if (result) {
  US_DEBUGP("sddr09_init: send_command fails\n");
  return result;
 }

 US_DEBUGP("SDDR09init: %02X %02X\n", data[0], data[1]);


 result = sddr09_send_command(us, 0x08, USB_DIR_IN, data, 2);
 if (result) {
  US_DEBUGP("sddr09_init: 2nd send_command fails\n");
  return result;
 }

 US_DEBUGP("SDDR09init: %02X %02X\n", data[0], data[1]);


 result = sddr09_request_sense(us, data, 18);
 if (result == 0 && data[2] != 0) {
  int j;
  for (j=0; j<18; j++)
   printk(" %02X", data[j]);
  printk("\n");







 }



 return 0;
}
