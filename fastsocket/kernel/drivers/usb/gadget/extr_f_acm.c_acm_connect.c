
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gserial {int dummy; } ;
struct f_acm {int serial_state; } ;


 int ACM_CTRL_DCD ;
 int ACM_CTRL_DSR ;
 int acm_notify_serial_state (struct f_acm*) ;
 struct f_acm* port_to_acm (struct gserial*) ;

__attribute__((used)) static void acm_connect(struct gserial *port)
{
 struct f_acm *acm = port_to_acm(port);

 acm->serial_state |= ACM_CTRL_DSR | ACM_CTRL_DCD;
 acm_notify_serial_state(acm);
}
