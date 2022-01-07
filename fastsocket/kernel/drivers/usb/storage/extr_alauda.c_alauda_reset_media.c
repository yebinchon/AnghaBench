
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; int send_bulk_pipe; } ;


 unsigned char ALAUDA_BULK_CMD ;
 unsigned char ALAUDA_BULK_RESET_MEDIA ;
 unsigned char MEDIA_PORT (struct us_data*) ;
 int memset (unsigned char*,int ,int) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,int,int *) ;

__attribute__((used)) static int alauda_reset_media(struct us_data *us)
{
 unsigned char *command = us->iobuf;

 memset(command, 0, 9);
 command[0] = ALAUDA_BULK_CMD;
 command[1] = ALAUDA_BULK_RESET_MEDIA;
 command[8] = MEDIA_PORT(us);

 return usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
  command, 9, ((void*)0));
}
