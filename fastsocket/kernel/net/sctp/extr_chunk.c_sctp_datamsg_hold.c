
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_datamsg {int refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void sctp_datamsg_hold(struct sctp_datamsg *msg)
{
 atomic_inc(&msg->refcnt);
}
