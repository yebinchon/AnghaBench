
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {TYPE_1__* termios; } ;
struct ktermios {int dummy; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;


 unsigned int CMSPAR ;
 int CS7 ;
 int CS8 ;
 unsigned int const CSIZE ;
 unsigned int CSTOPB ;
 unsigned int IUU_ONE_STOP_BIT ;
 unsigned int IUU_PARITY_EVEN ;
 unsigned int IUU_PARITY_MARK ;
 unsigned int IUU_PARITY_NONE ;
 unsigned int IUU_PARITY_ODD ;
 unsigned int IUU_PARITY_SPACE ;
 unsigned int IUU_TWO_STOP_BITS ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 int boost ;
 int clockmode ;
 int iuu_uart_baud (struct usb_serial_port*,int,unsigned int*,unsigned int) ;
 int tty_encode_baud_rate (struct tty_struct*,int,int) ;
 int tty_termios_copy_hw (TYPE_1__*,struct ktermios*) ;

__attribute__((used)) static void iuu_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 const u32 supported_mask = CMSPAR|PARENB|PARODD;

 unsigned int cflag = tty->termios->c_cflag;
 int status;
 u32 actual;
 u32 parity;
 int csize = CS7;
 int baud = 9600;
 u32 newval = cflag & supported_mask;


 parity = 0;
 if (cflag & CMSPAR) {
  if (cflag & PARODD)
   parity |= IUU_PARITY_SPACE;
  else
   parity |= IUU_PARITY_MARK;
 } else if (!(cflag & PARENB)) {
  parity |= IUU_PARITY_NONE;
  csize = CS8;
 } else if (cflag & PARODD)
  parity |= IUU_PARITY_ODD;
 else
  parity |= IUU_PARITY_EVEN;

 parity |= (cflag & CSTOPB ? IUU_TWO_STOP_BITS : IUU_ONE_STOP_BIT);


 status = iuu_uart_baud(port,
   (clockmode == 2) ? 16457 : 9600 * boost / 100,
   &actual, parity);





  if (old_termios)
   tty_termios_copy_hw(tty->termios, old_termios);
 if (status != 0)
  return;

 tty_encode_baud_rate(tty, baud, baud);
 tty->termios->c_cflag &= ~(supported_mask|CSIZE);
 tty->termios->c_cflag |= newval | csize;
}
