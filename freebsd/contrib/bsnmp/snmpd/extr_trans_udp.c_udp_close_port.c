
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_port {int input; } ;
struct tport {int dummy; } ;


 int free (struct udp_port*) ;
 int snmpd_input_close (int *) ;
 int trans_remove_port (struct tport*) ;

__attribute__((used)) static void
udp_close_port(struct tport *tp)
{
 struct udp_port *port = (struct udp_port *)tp;

 snmpd_input_close(&port->input);
 trans_remove_port(tp);
 free(port);
}
