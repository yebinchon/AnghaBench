
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct us_data {unsigned char* iobuf; } ;
struct datafab_info {int lun; int sectors; } ;


 int GFP_NOIO ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int datafab_bulk_read (struct us_data*,unsigned char*,int) ;
 int datafab_bulk_write (struct us_data*,unsigned char*,int) ;
 int datafab_determine_lun (struct us_data*,struct datafab_info*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int datafab_id_device(struct us_data *us,
        struct datafab_info *info)
{




 static unsigned char scommand[8] = { 0, 1, 0, 0, 0, 0xa0, 0xec, 1 };
 unsigned char *command = us->iobuf;
 unsigned char *reply;
 int rc;

 if (!info)
  return USB_STOR_TRANSPORT_ERROR;

 if (info->lun == -1) {
  rc = datafab_determine_lun(us, info);
  if (rc != USB_STOR_TRANSPORT_GOOD)
   return rc;
 }

 memcpy(command, scommand, 8);
 reply = kmalloc(512, GFP_NOIO);
 if (!reply)
  return USB_STOR_TRANSPORT_ERROR;

 command[5] += (info->lun << 4);

 rc = datafab_bulk_write(us, command, 8);
 if (rc != USB_STOR_XFER_GOOD) {
  rc = USB_STOR_TRANSPORT_ERROR;
  goto leave;
 }



 rc = datafab_bulk_read(us, reply, 512);
 if (rc == USB_STOR_XFER_GOOD) {


  info->sectors = ((u32)(reply[117]) << 24) |
    ((u32)(reply[116]) << 16) |
    ((u32)(reply[115]) << 8) |
    ((u32)(reply[114]) );
  rc = USB_STOR_TRANSPORT_GOOD;
  goto leave;
 }

 rc = USB_STOR_TRANSPORT_ERROR;

 leave:
 kfree(reply);
 return rc;
}
