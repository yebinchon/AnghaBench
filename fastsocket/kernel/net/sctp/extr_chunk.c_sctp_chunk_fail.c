
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {TYPE_1__* msg; } ;
struct TYPE_2__ {int send_failed; int send_error; } ;



void sctp_chunk_fail(struct sctp_chunk *chunk, int error)
{
 chunk->msg->send_failed = 1;
 chunk->msg->send_error = error;
}
