
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 unsigned char MCT_U232_MCR_DTR ;
 unsigned char MCT_U232_MCR_NONE ;
 unsigned char MCT_U232_MCR_RTS ;
 int MCT_U232_SET_MODEM_CTRL_REQUEST ;
 int MCT_U232_SET_MODEM_CTRL_SIZE ;
 int MCT_U232_SET_REQUEST_TYPE ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int WDR_TIMEOUT ;
 int dbg (char*,unsigned int,unsigned char) ;
 int dev_err (int *,char*,unsigned char,int) ;
 int usb_control_msg (TYPE_1__*,int ,int ,int ,int ,int ,unsigned char*,int ,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int mct_u232_set_modem_ctrl(struct usb_serial *serial,
       unsigned int control_state)
{
 int rc;
 unsigned char mcr = MCT_U232_MCR_NONE;

 if (control_state & TIOCM_DTR)
  mcr |= MCT_U232_MCR_DTR;
 if (control_state & TIOCM_RTS)
  mcr |= MCT_U232_MCR_RTS;

 rc = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   MCT_U232_SET_MODEM_CTRL_REQUEST,
   MCT_U232_SET_REQUEST_TYPE,
   0, 0, &mcr, MCT_U232_SET_MODEM_CTRL_SIZE,
   WDR_TIMEOUT);
 if (rc < 0)
  dev_err(&serial->dev->dev,
   "Set MODEM CTRL 0x%x failed (error = %d)\n", mcr, rc);
 dbg("set_modem_ctrl: state=0x%x ==> mcr=0x%x", control_state, mcr);

 return rc;
}
