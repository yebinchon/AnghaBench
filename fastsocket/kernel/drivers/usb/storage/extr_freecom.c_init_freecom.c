
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {char* iobuf; int send_ctrl_pipe; int recv_ctrl_pipe; } ;


 int HZ ;
 int USB_STOR_TRANSPORT_GOOD ;
 int US_DEBUGP (char*,...) ;
 int mdelay (int) ;
 int usb_stor_control_msg (struct us_data*,int ,int,int,int,int,char*,int,int) ;

__attribute__((used)) static int init_freecom(struct us_data *us)
{
 int result;
 char *buffer = us->iobuf;





 result = usb_stor_control_msg(us, us->recv_ctrl_pipe,
   0x4c, 0xc0, 0x4346, 0x0, buffer, 0x20, 3*HZ);
 buffer[32] = '\0';
 US_DEBUGP("String returned from FC init is: %s\n", buffer);
 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
   0x4d, 0x40, 0x24d8, 0x0, ((void*)0), 0x0, 3*HZ);
 US_DEBUGP("result from activate reset is %d\n", result);


 mdelay(250);


 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
   0x4d, 0x40, 0x24f8, 0x0, ((void*)0), 0x0, 3*HZ);
 US_DEBUGP("result from clear reset is %d\n", result);


 mdelay(3 * 1000);

 return USB_STOR_TRANSPORT_GOOD;
}
