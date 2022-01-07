
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_datamsg {int expires_at; int can_abandon; } ;
struct sctp_chunk {struct sctp_datamsg* msg; } ;


 int jiffies ;
 scalar_t__ time_after (int ,int ) ;

int sctp_chunk_abandoned(struct sctp_chunk *chunk)
{
 struct sctp_datamsg *msg = chunk->msg;

 if (!msg->can_abandon)
  return 0;

 if (time_after(jiffies, msg->expires_at))
  return 1;

 return 0;
}
