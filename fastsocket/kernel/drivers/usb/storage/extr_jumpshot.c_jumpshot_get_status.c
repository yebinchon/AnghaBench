
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int* iobuf; int recv_ctrl_pipe; } ;


 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int USB_STOR_XFER_GOOD ;
 int US_DEBUGP (char*,int) ;
 int usb_stor_ctrl_transfer (struct us_data*,int ,int ,int,int ,int,int*,int) ;

__attribute__((used)) static int jumpshot_get_status(struct us_data *us)
{
 int rc;

 if (!us)
  return USB_STOR_TRANSPORT_ERROR;


 rc = usb_stor_ctrl_transfer(us, us->recv_ctrl_pipe,
       0, 0xA0, 0, 7, us->iobuf, 1);

 if (rc != USB_STOR_XFER_GOOD)
  return USB_STOR_TRANSPORT_ERROR;

 if (us->iobuf[0] != 0x50) {
  US_DEBUGP("jumpshot_get_status:  0x%2x\n",
     us->iobuf[0]);
  return USB_STOR_TRANSPORT_ERROR;
 }

 return USB_STOR_TRANSPORT_GOOD;
}
