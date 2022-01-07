
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {char* iobuf; int recv_bulk_pipe; int send_bulk_pipe; scalar_t__ extra; } ;
struct karma_data {unsigned char* recv; } ;


 int RIO_PREFIX ;
 int RIO_PREFIX_LEN ;
 int RIO_RECV_LEN ;
 int RIO_SEND_LEN ;
 int USB_STOR_TRANSPORT_FAILED ;
 int USB_STOR_XFER_GOOD ;
 int US_DEBUGP (char*,char) ;
 unsigned long jiffies ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usb_stor_bulk_transfer_buf (struct us_data*,int ,unsigned char*,int ,int*) ;

__attribute__((used)) static int rio_karma_send_command(char cmd, struct us_data *us)
{
 int result, partial;
 unsigned long timeout;
 static unsigned char seq = 1;
 struct karma_data *data = (struct karma_data *) us->extra;

 US_DEBUGP("karma: sending command %04x\n", cmd);
 memset(us->iobuf, 0, RIO_SEND_LEN);
 memcpy(us->iobuf, RIO_PREFIX, RIO_PREFIX_LEN);
 us->iobuf[5] = cmd;
 us->iobuf[6] = seq;

 timeout = jiffies + msecs_to_jiffies(6000);
 for (;;) {
  result = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
   us->iobuf, RIO_SEND_LEN, &partial);
  if (result != USB_STOR_XFER_GOOD)
   goto err;

  result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
   data->recv, RIO_RECV_LEN, &partial);
  if (result != USB_STOR_XFER_GOOD)
   goto err;

  if (data->recv[5] == seq)
   break;

  if (time_after(jiffies, timeout))
   goto err;

  us->iobuf[4] = 0x80;
  us->iobuf[5] = 0;
  msleep(50);
 }

 seq++;
 if (seq == 0)
  seq = 1;

 US_DEBUGP("karma: sent command %04x\n", cmd);
 return 0;
err:
 US_DEBUGP("karma: command %04x failed\n", cmd);
 return USB_STOR_TRANSPORT_FAILED;
}
