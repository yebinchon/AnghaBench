
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int port; } ;


 int acm_port_down (struct acm*,int ) ;
 int tty_port_hangup (int *) ;

__attribute__((used)) static void acm_tty_hangup(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;
 tty_port_hangup(&acm->port);
 acm_port_down(acm, 0);
}
