
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int number; struct usb_serial* serial; } ;
struct usb_serial {int minor; } ;
struct moschip_port {unsigned char shadowMCR; unsigned char shadowLCR; struct usb_serial_port* port; } ;


 int EINVAL ;
 int MOS_MAX_PORT ;
 int MOS_READ ;
 int MOS_WRITE ;
 unsigned char UART_LCR_DLAB ;
 int dbg (char*) ;
 int send_mos_cmd (struct usb_serial*,int ,int,int,unsigned char*) ;

__attribute__((used)) static int set_higher_rates(struct moschip_port *mos7720_port,
       unsigned int baud)
{
 unsigned char data;
 struct usb_serial_port *port;
 struct usb_serial *serial;
 int port_number;

 if (mos7720_port == ((void*)0))
  return -EINVAL;

 port = mos7720_port->port;
 serial = port->serial;




 dbg("Sending Setting Commands ..........");
 port_number = port->number - port->serial->minor;

 data = 0x000;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x01, &data);
 data = 0x000;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x02, &data);
 data = 0x0CF;
 send_mos_cmd(serial, MOS_WRITE, port->number, 0x02, &data);
 data = 0x00b;
 mos7720_port->shadowMCR = data;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x04, &data);
 data = 0x00b;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x04, &data);

 data = 0x000;
 send_mos_cmd(serial, MOS_READ, MOS_MAX_PORT, 0x08, &data);
 data = 0x000;
 send_mos_cmd(serial, MOS_WRITE, MOS_MAX_PORT, 0x08, &data);






 data = baud * 0x10;
 send_mos_cmd(serial, MOS_WRITE, MOS_MAX_PORT, port_number + 1, &data);

 data = 0x003;
 send_mos_cmd(serial, MOS_READ, MOS_MAX_PORT, 0x08, &data);
 data = 0x003;
 send_mos_cmd(serial, MOS_WRITE, MOS_MAX_PORT, 0x08, &data);

 data = 0x02b;
 mos7720_port->shadowMCR = data;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x04, &data);
 data = 0x02b;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x04, &data);





 data = mos7720_port->shadowLCR | UART_LCR_DLAB;
 mos7720_port->shadowLCR = data;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x03, &data);

 data = 0x001;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x00, &data);
 data = 0x000;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x01, &data);

 data = mos7720_port->shadowLCR & ~UART_LCR_DLAB;
 mos7720_port->shadowLCR = data;
 send_mos_cmd(serial, MOS_WRITE, port_number, 0x03, &data);

 return 0;
}
