
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int hb_timer; } ;
typedef int sctp_cmd_seq_t ;


 int mod_timer (int *,int ) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 int sctp_transport_timeout (struct sctp_transport*) ;

__attribute__((used)) static void sctp_cmd_hb_timer_update(sctp_cmd_seq_t *cmds,
         struct sctp_transport *t)
{

 if (!mod_timer(&t->hb_timer, sctp_transport_timeout(t)))
  sctp_transport_hold(t);
}
