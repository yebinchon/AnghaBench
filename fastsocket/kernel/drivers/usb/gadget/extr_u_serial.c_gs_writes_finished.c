
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_port {int port_lock; int port_write_buf; int * port_usb; } ;


 int gs_buf_data_avail (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gs_writes_finished(struct gs_port *p)
{
 int cond;


 spin_lock_irq(&p->port_lock);
 cond = (p->port_usb == ((void*)0)) || !gs_buf_data_avail(&p->port_write_buf);
 spin_unlock_irq(&p->port_lock);

 return cond;
}
