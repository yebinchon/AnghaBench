
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LLC_CONN_EV_TYPE_BUSY_TMR ;
 int llc_conn_tmr_common_cb (unsigned long,int ) ;

void llc_conn_busy_tmr_cb(unsigned long timeout_data)
{
 llc_conn_tmr_common_cb(timeout_data, LLC_CONN_EV_TYPE_BUSY_TMR);
}
