
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_port {int start; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t portio_start_show(struct uio_port *port, char *buf)
{
 return sprintf(buf, "0x%lx\n", port->start);
}
