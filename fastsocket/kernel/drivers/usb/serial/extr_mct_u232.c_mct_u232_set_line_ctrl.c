
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int MCT_U232_SET_LINE_CTRL_REQUEST ;
 int MCT_U232_SET_LINE_CTRL_SIZE ;
 int MCT_U232_SET_REQUEST_TYPE ;
 int WDR_TIMEOUT ;
 int dbg (char*,unsigned char) ;
 int dev_err (int *,char*,unsigned char,int) ;
 int usb_control_msg (TYPE_1__*,int ,int ,int ,int ,int ,unsigned char*,int ,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int mct_u232_set_line_ctrl(struct usb_serial *serial, unsigned char lcr)
{
 int rc;
 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   MCT_U232_SET_LINE_CTRL_REQUEST,
   MCT_U232_SET_REQUEST_TYPE,
   0, 0, &lcr, MCT_U232_SET_LINE_CTRL_SIZE,
   WDR_TIMEOUT);
 if (rc < 0)
  dev_err(&serial->dev->dev,
   "Set LINE CTRL 0x%x failed (error = %d)\n", lcr, rc);
 dbg("set_line_ctrl: 0x%x", lcr);
 return rc;
}
