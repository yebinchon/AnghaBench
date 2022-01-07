
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbat_info {int ssize; } ;
struct us_data {int srb; } ;
struct scatterlist {int dummy; } ;


 int GFP_NOIO ;
 int TO_XFER_BUF ;
 unsigned char USBAT_ATA_DEVICE ;
 unsigned char USBAT_ATA_FEATURES ;
 unsigned char USBAT_ATA_LBA_HI ;
 unsigned char USBAT_ATA_LBA_ME ;
 unsigned char USBAT_ATA_SECCNT ;
 unsigned char USBAT_ATA_SECNUM ;
 unsigned char USBAT_ATA_STATUS ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int US_DEBUGP (char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 void* min (unsigned int,unsigned int) ;
 int usb_stor_access_xfer_buf (unsigned char*,int,int ,struct scatterlist**,unsigned int*,int ) ;
 int usbat_flash_check_media (struct us_data*,struct usbat_info*) ;
 int usbat_multiple_write (struct us_data*,unsigned char*,unsigned char*,int) ;
 int usbat_pack_ata_sector_cmd (unsigned char*,unsigned char,int,int) ;
 int usbat_read_blocks (struct us_data*,unsigned char*,int,int ) ;

__attribute__((used)) static int usbat_flash_read_data(struct us_data *us,
         struct usbat_info *info,
         u32 sector,
         u32 sectors)
{
 unsigned char registers[7] = {
  USBAT_ATA_FEATURES,
  USBAT_ATA_SECCNT,
  USBAT_ATA_SECNUM,
  USBAT_ATA_LBA_ME,
  USBAT_ATA_LBA_HI,
  USBAT_ATA_DEVICE,
  USBAT_ATA_STATUS,
 };
 unsigned char command[7];
 unsigned char *buffer;
 unsigned char thistime;
 unsigned int totallen, alloclen;
 int len, result;
 unsigned int sg_offset = 0;
 struct scatterlist *sg = ((void*)0);

 result = usbat_flash_check_media(us, info);
 if (result != USB_STOR_TRANSPORT_GOOD)
  return result;
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


  usbat_pack_ata_sector_cmd(command, thistime, sector, 0x20);


  result = usbat_multiple_write(us, registers, command, 7);
  if (result != USB_STOR_TRANSPORT_GOOD)
   goto leave;


  result = usbat_read_blocks(us, buffer, len, 0);
  if (result != USB_STOR_TRANSPORT_GOOD)
   goto leave;

  US_DEBUGP("usbat_flash_read_data:  %d bytes\n", len);


  usb_stor_access_xfer_buf(buffer, len, us->srb,
      &sg, &sg_offset, TO_XFER_BUF);

  sector += thistime;
  totallen -= len;
 } while (totallen > 0);

 kfree(buffer);
 return USB_STOR_TRANSPORT_GOOD;

leave:
 kfree(buffer);
 return USB_STOR_TRANSPORT_ERROR;
}
