
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int USB_DIR_OUT ;
 int sddr09_send_command (struct us_data*,int ,int ,unsigned char*,unsigned int) ;

__attribute__((used)) static int
sddr09_send_scsi_command(struct us_data *us,
    unsigned char *command,
    unsigned int command_len) {
 return sddr09_send_command(us, 0, USB_DIR_OUT, command, command_len);
}
