
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int refcnt; } ;


 int atomic_inc (int *) ;

void sctp_chunk_hold(struct sctp_chunk *ch)
{
 atomic_inc(&ch->refcnt);
}
