
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rc_pid_event_data {void* der_err; void* int_err; void* prop_err; void* pf_sample; } ;
struct rc_pid_event_buffer {int dummy; } ;
typedef void* s32 ;


 int RC_PID_EVENT_TYPE_PF_SAMPLE ;
 int rate_control_pid_event (struct rc_pid_event_buffer*,int ,union rc_pid_event_data*) ;

void rate_control_pid_event_pf_sample(struct rc_pid_event_buffer *buf,
          s32 pf_sample, s32 prop_err,
          s32 int_err, s32 der_err)
{
 union rc_pid_event_data evd;

 evd.pf_sample = pf_sample;
 evd.prop_err = prop_err;
 evd.int_err = int_err;
 evd.der_err = der_err;
 rate_control_pid_event(buf, RC_PID_EVENT_TYPE_PF_SAMPLE, &evd);
}
