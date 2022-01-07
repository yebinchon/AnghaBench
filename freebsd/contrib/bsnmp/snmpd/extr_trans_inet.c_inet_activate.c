
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tport {int dummy; } ;
struct inet_port {int (* activate ) (struct inet_port*) ;} ;


 int stub1 (struct inet_port*) ;

__attribute__((used)) static int
inet_activate(struct tport *tp)
{
 struct inet_port *port = (struct inet_port *)tp;

 return (port->activate(port));
}
