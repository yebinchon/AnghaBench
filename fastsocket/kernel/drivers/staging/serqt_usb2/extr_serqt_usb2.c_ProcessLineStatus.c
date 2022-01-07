
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quatech_port {unsigned char shadowLSR; } ;


 unsigned char SERIAL_LSR_BI ;
 unsigned char SERIAL_LSR_FE ;
 unsigned char SERIAL_LSR_OE ;
 unsigned char SERIAL_LSR_PE ;

__attribute__((used)) static void ProcessLineStatus(struct quatech_port *qt_port,
         unsigned char line_status)
{

 qt_port->shadowLSR =
     line_status & (SERIAL_LSR_OE | SERIAL_LSR_PE | SERIAL_LSR_FE |
      SERIAL_LSR_BI);
 return;
}
