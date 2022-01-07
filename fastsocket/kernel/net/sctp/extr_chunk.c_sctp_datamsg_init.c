
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_datamsg {int can_delay; int chunks; scalar_t__ expires_at; scalar_t__ can_abandon; scalar_t__ send_error; scalar_t__ send_failed; int refcnt; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static void sctp_datamsg_init(struct sctp_datamsg *msg)
{
 atomic_set(&msg->refcnt, 1);
 msg->send_failed = 0;
 msg->send_error = 0;
 msg->can_abandon = 0;
 msg->can_delay = 1;
 msg->expires_at = 0;
 INIT_LIST_HEAD(&msg->chunks);
}
