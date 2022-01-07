
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_port {int ref; } ;
typedef int Handler ;


 scalar_t__ port_wakeup_sh ;
 int tipc_k_signal (int ,int ) ;

__attribute__((used)) static void port_wakeup(struct tipc_port *p_ptr)
{
 tipc_k_signal((Handler)port_wakeup_sh, p_ptr->ref);
}
