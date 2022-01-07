
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gserial {int dummy; } ;
struct f_acm {int serial_state; } ;


 int ACM_CTRL_BRK ;
 int acm_notify_serial_state (struct f_acm*) ;
 struct f_acm* port_to_acm (struct gserial*) ;

__attribute__((used)) static int acm_send_break(struct gserial *port, int duration)
{
 struct f_acm *acm = port_to_acm(port);
 u16 state;

 state = acm->serial_state;
 state &= ~ACM_CTRL_BRK;
 if (duration)
  state |= ACM_CTRL_BRK;

 acm->serial_state = state;
 return acm_notify_serial_state(acm);
}
