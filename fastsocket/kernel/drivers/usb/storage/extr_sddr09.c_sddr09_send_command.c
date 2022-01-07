
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned int recv_ctrl_pipe; unsigned int send_ctrl_pipe; } ;


 int EIO ;
 int EPIPE ;
 unsigned char USB_DIR_IN ;


 int usb_stor_ctrl_transfer (struct us_data*,unsigned int,unsigned char,unsigned char,int ,int ,unsigned char*,unsigned int) ;

__attribute__((used)) static int
sddr09_send_command(struct us_data *us,
      unsigned char request,
      unsigned char direction,
      unsigned char *xfer_data,
      unsigned int xfer_len) {
 unsigned int pipe;
 unsigned char requesttype = (0x41 | direction);
 int rc;



 if (direction == USB_DIR_IN)
  pipe = us->recv_ctrl_pipe;
 else
  pipe = us->send_ctrl_pipe;

 rc = usb_stor_ctrl_transfer(us, pipe, request, requesttype,
       0, 0, xfer_data, xfer_len);
 switch (rc) {
  case 129: return 0;
  case 128: return -EPIPE;
  default: return -EIO;
 }
}
