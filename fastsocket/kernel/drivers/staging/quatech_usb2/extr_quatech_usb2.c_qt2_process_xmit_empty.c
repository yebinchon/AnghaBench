
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int number; } ;
struct quatech2_port {int tx_pending_bytes; } ;


 int dbg (char*,int ,int,int) ;
 struct quatech2_port* qt2_get_port_private (struct usb_serial_port*) ;

__attribute__((used)) static void qt2_process_xmit_empty(struct usb_serial_port *port,
 unsigned char fourth_char, unsigned char fifth_char)
{
 int byte_count;

 struct quatech2_port *port_extra = qt2_get_port_private(port);

 byte_count = (int)(fifth_char * 16);
 byte_count += (int)fourth_char;



 port_extra->tx_pending_bytes -= byte_count;


 dbg("port %d: %d bytes reported sent, %d still pending", port->number,
   byte_count, port_extra->tx_pending_bytes);


}
