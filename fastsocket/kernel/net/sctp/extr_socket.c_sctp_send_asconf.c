
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int list; } ;
struct sctp_association {struct sctp_chunk* addip_last_asconf; int addip_chunk_list; } ;


 int list_add_tail (int *,int *) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_chunk_hold (struct sctp_chunk*) ;
 int sctp_primitive_ASCONF (struct sctp_association*,struct sctp_chunk*) ;

__attribute__((used)) static int sctp_send_asconf(struct sctp_association *asoc,
       struct sctp_chunk *chunk)
{
 int retval = 0;




 if (asoc->addip_last_asconf) {
  list_add_tail(&chunk->list, &asoc->addip_chunk_list);
  goto out;
 }


 sctp_chunk_hold(chunk);
 retval = sctp_primitive_ASCONF(asoc, chunk);
 if (retval)
  sctp_chunk_free(chunk);
 else
  asoc->addip_last_asconf = chunk;

out:
 return retval;
}
