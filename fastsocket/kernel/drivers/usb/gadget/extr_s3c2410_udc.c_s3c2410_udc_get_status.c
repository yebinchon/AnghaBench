
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_ctrlrequest {int wIndex; int bRequestType; int wLength; } ;
struct s3c2410_udc {int devstatus; } ;


 int S3C2410_UDC_EP0_CSR_SENDSTL ;
 int S3C2410_UDC_EP0_FIFO_REG ;
 int S3C2410_UDC_ICSR1_SENDSTL ;
 int S3C2410_UDC_INDEX_REG ;
 int S3C2410_UDC_IN_CSR1_REG ;
 int S3C2410_UDC_OCSR1_SENDSTL ;
 int S3C2410_UDC_OUT_CSR1_REG ;
 int USB_DIR_IN ;



 int USB_RECIP_MASK ;
 int base_addr ;
 int s3c2410_udc_set_ep0_de_in (int ) ;
 int udc_read (int ) ;
 int udc_write (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int s3c2410_udc_get_status(struct s3c2410_udc *dev,
  struct usb_ctrlrequest *crq)
{
 u16 status = 0;
 u8 ep_num = crq->wIndex & 0x7F;
 u8 is_in = crq->wIndex & USB_DIR_IN;

 switch (crq->bRequestType & USB_RECIP_MASK) {
 case 128:
  break;

 case 130:
  status = dev->devstatus;
  break;

 case 129:
  if (ep_num > 4 || crq->wLength > 2)
   return 1;

  if (ep_num == 0) {
   udc_write(0, S3C2410_UDC_INDEX_REG);
   status = udc_read(S3C2410_UDC_IN_CSR1_REG);
   status = status & S3C2410_UDC_EP0_CSR_SENDSTL;
  } else {
   udc_write(ep_num, S3C2410_UDC_INDEX_REG);
   if (is_in) {
    status = udc_read(S3C2410_UDC_IN_CSR1_REG);
    status = status & S3C2410_UDC_ICSR1_SENDSTL;
   } else {
    status = udc_read(S3C2410_UDC_OUT_CSR1_REG);
    status = status & S3C2410_UDC_OCSR1_SENDSTL;
   }
  }

  status = status ? 1 : 0;
  break;

 default:
  return 1;
 }


 udelay(5);
 udc_write(status & 0xFF, S3C2410_UDC_EP0_FIFO_REG);
 udc_write(status >> 8, S3C2410_UDC_EP0_FIFO_REG);
 s3c2410_udc_set_ep0_de_in(base_addr);

 return 0;
}
