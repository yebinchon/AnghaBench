
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_port {int (* deactivate ) (struct inet_port*) ;} ;


 int stub1 (struct inet_port*) ;

__attribute__((used)) static void
deactivate_port(struct inet_port *p)
{
 p->deactivate(p);
}
