
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rc_pid_event_data {int index; int rate; } ;
struct rc_pid_event_buffer {int dummy; } ;


 int RC_PID_EVENT_TYPE_TX_RATE ;
 int rate_control_pid_event (struct rc_pid_event_buffer*,int ,union rc_pid_event_data*) ;

void rate_control_pid_event_tx_rate(struct rc_pid_event_buffer *buf,
        int index, int rate)
{
 union rc_pid_event_data evd;

 evd.index = index;
 evd.rate = rate;
 rate_control_pid_event(buf, RC_PID_EVENT_TYPE_TX_RATE, &evd);
}
