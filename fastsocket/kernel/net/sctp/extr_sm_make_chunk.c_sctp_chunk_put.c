
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int sctp_chunk_destroy (struct sctp_chunk*) ;

void sctp_chunk_put(struct sctp_chunk *ch)
{
 if (atomic_dec_and_test(&ch->refcnt))
  sctp_chunk_destroy(ch);
}
