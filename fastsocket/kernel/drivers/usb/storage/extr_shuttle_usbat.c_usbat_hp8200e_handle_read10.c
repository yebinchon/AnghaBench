
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct scsi_cmnd {unsigned int transfersize; } ;
struct scatterlist {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int GFP_NOIO ;
 unsigned char GPCMD_READ_CD ;
 unsigned char LSB_of (unsigned int) ;
 unsigned char MSB_of (unsigned int) ;
 int TO_XFER_BUF ;
 int USBAT_ATA ;
 int USBAT_ATA_DATA ;
 int USBAT_ATA_STATUS ;
 int USBAT_QUAL_ALQ ;
 int USBAT_QUAL_FCQ ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_TRANSPORT_GOOD ;
 int US_DEBUGP (char*,unsigned int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 unsigned char* scsi_sglist (struct scsi_cmnd*) ;
 unsigned int short_pack (unsigned char,unsigned char) ;
 unsigned int transferred ;
 int usb_stor_access_xfer_buf (unsigned char*,unsigned int,struct scsi_cmnd*,struct scatterlist**,unsigned int*,int ) ;
 int usbat_hp8200e_rw_block_test (struct us_data*,int ,unsigned char*,unsigned char*,int,int ,int ,int,int,int ,unsigned char*,unsigned int,int ,int) ;

__attribute__((used)) static int usbat_hp8200e_handle_read10(struct us_data *us,
           unsigned char *registers,
           unsigned char *data,
           struct scsi_cmnd *srb)
{
 int result = USB_STOR_TRANSPORT_GOOD;
 unsigned char *buffer;
 unsigned int len;
 unsigned int sector;
 unsigned int sg_offset = 0;
 struct scatterlist *sg = ((void*)0);

 US_DEBUGP("handle_read10: transfersize %d\n",
  srb->transfersize);

 if (scsi_bufflen(srb) < 0x10000) {

  result = usbat_hp8200e_rw_block_test(us, USBAT_ATA,
   registers, data, 19,
   USBAT_ATA_DATA, USBAT_ATA_STATUS, 0xFD,
   (USBAT_QUAL_FCQ | USBAT_QUAL_ALQ),
   DMA_FROM_DEVICE,
   scsi_sglist(srb),
   scsi_bufflen(srb), scsi_sg_count(srb), 1);

  return result;
 }
 if (data[7+0] == GPCMD_READ_CD) {
  len = short_pack(data[7+9], data[7+8]);
  len <<= 16;
  len |= data[7+7];
  US_DEBUGP("handle_read10: GPCMD_READ_CD: len %d\n", len);
  srb->transfersize = scsi_bufflen(srb)/len;
 }

 if (!srb->transfersize) {
  srb->transfersize = 2048;
  US_DEBUGP("handle_read10: transfersize 0, forcing %d\n",
   srb->transfersize);
 }







 len = (65535/srb->transfersize) * srb->transfersize;
 US_DEBUGP("Max read is %d bytes\n", len);
 len = min(len, scsi_bufflen(srb));
 buffer = kmalloc(len, GFP_NOIO);
 if (buffer == ((void*)0))
  return USB_STOR_TRANSPORT_FAILED;
 sector = short_pack(data[7+3], data[7+2]);
 sector <<= 16;
 sector |= short_pack(data[7+5], data[7+4]);
 transferred = 0;

 while (transferred != scsi_bufflen(srb)) {

  if (len > scsi_bufflen(srb) - transferred)
   len = scsi_bufflen(srb) - transferred;

  data[3] = len&0xFF;
  data[4] = (len>>8)&0xFF;



  data[7+2] = MSB_of(sector>>16);
  data[7+3] = LSB_of(sector>>16);
  data[7+4] = MSB_of(sector&0xFFFF);
  data[7+5] = LSB_of(sector&0xFFFF);
  if (data[7+0] == GPCMD_READ_CD)
   data[7+6] = 0;
  data[7+7] = MSB_of(len / srb->transfersize);
  data[7+8] = LSB_of(len / srb->transfersize);

  result = usbat_hp8200e_rw_block_test(us, USBAT_ATA,
   registers, data, 19,
   USBAT_ATA_DATA, USBAT_ATA_STATUS, 0xFD,
   (USBAT_QUAL_FCQ | USBAT_QUAL_ALQ),
   DMA_FROM_DEVICE,
   buffer,
   len, 0, 1);

  if (result != USB_STOR_TRANSPORT_GOOD)
   break;


  usb_stor_access_xfer_buf(buffer, len, srb,
     &sg, &sg_offset, TO_XFER_BUF);



  transferred += len;
  sector += len / srb->transfersize;

 }

 kfree(buffer);
 return result;
}
