
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_port {int port_write_buf; } ;


 unsigned int gs_buf_data_avail (int *) ;
 unsigned int gs_buf_get (int *,char*,unsigned int) ;

__attribute__((used)) static unsigned
gs_send_packet(struct gs_port *port, char *packet, unsigned size)
{
 unsigned len;

 len = gs_buf_data_avail(&port->port_write_buf);
 if (len < size)
  size = len;
 if (size != 0)
  size = gs_buf_get(&port->port_write_buf, packet, size);
 return size;
}
