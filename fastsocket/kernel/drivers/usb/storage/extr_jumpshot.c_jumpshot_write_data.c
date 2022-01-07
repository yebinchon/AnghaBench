
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct us_data {unsigned char* iobuf; int send_ctrl_pipe; int srb; } ;
struct scatterlist {int dummy; } ;
struct jumpshot_info {int ssize; } ;


 int FROM_XFER_BUF ;
 int GFP_NOIO ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int US_DEBUGP (char*) ;
 int jumpshot_bulk_write (struct us_data*,unsigned char*,int) ;
 int jumpshot_get_status (struct us_data*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 void* min (unsigned int,unsigned int) ;
 int msleep (int) ;
 int usb_stor_access_xfer_buf (unsigned char*,int,int ,struct scatterlist**,unsigned int*,int ) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int ,int,int ,int,unsigned char*,int) ;

__attribute__((used)) static int jumpshot_write_data(struct us_data *us,
          struct jumpshot_info *info,
          u32 sector,
          u32 sectors)
{
 unsigned char *command = us->iobuf;
 unsigned char *buffer;
 unsigned char thistime;
 unsigned int totallen, alloclen;
 int len, result, waitcount;
 unsigned int sg_offset = 0;
 struct scatterlist *sg = ((void*)0);






 if (sector > 0x0FFFFFFF)
  return USB_STOR_TRANSPORT_ERROR;

 totallen = sectors * info->ssize;





 alloclen = min(totallen, 65536u);
 buffer = kmalloc(alloclen, GFP_NOIO);
 if (buffer == ((void*)0))
  return USB_STOR_TRANSPORT_ERROR;

 do {



  len = min(totallen, alloclen);
  thistime = (len / info->ssize) & 0xff;


  usb_stor_access_xfer_buf(buffer, len, us->srb,
    &sg, &sg_offset, FROM_XFER_BUF);

  command[0] = 0;
  command[1] = thistime;
  command[2] = sector & 0xFF;
  command[3] = (sector >> 8) & 0xFF;
  command[4] = (sector >> 16) & 0xFF;

  command[5] = 0xE0 | ((sector >> 24) & 0x0F);
  command[6] = 0x30;


  result = usb_stor_ctrl_transfer(us, us->send_ctrl_pipe,
   0, 0x20, 0, 1, command, 7);
  if (result != USB_STOR_XFER_GOOD)
   goto leave;


  result = jumpshot_bulk_write(us, buffer, len);
  if (result != USB_STOR_XFER_GOOD)
   goto leave;




  waitcount = 0;
  do {
   result = jumpshot_get_status(us);
   if (result != USB_STOR_TRANSPORT_GOOD) {


    msleep(50);
   }
  } while ((result != USB_STOR_TRANSPORT_GOOD) && (waitcount < 10));

  if (result != USB_STOR_TRANSPORT_GOOD)
   US_DEBUGP("jumpshot_write_data:  Gah!  Waitcount = 10.  Bad write!?\n");

  sector += thistime;
  totallen -= len;
 } while (totallen > 0);

 kfree(buffer);
 return result;

 leave:
 kfree(buffer);
 return USB_STOR_TRANSPORT_ERROR;
}
