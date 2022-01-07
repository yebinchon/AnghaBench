
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quatech_port {unsigned char shadowMSR; int wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ProcessModemStatus(struct quatech_port *qt_port,
          unsigned char modem_status)
{

 qt_port->shadowMSR = modem_status;
 wake_up_interruptible(&qt_port->wait);
 return;
}
