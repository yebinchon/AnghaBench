
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_init_chunk_t ;
typedef int sctp_cmd_seq_t ;
typedef int gfp_t ;


 int ENOMEM ;
 int sctp_process_init (struct sctp_association*,struct sctp_chunk*,int ,int *,int ) ;
 int sctp_source (struct sctp_chunk*) ;

__attribute__((used)) static int sctp_cmd_process_init(sctp_cmd_seq_t *commands,
     struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     sctp_init_chunk_t *peer_init,
     gfp_t gfp)
{
 int error;






 if (!sctp_process_init(asoc, chunk, sctp_source(chunk), peer_init, gfp))
  error = -ENOMEM;
 else
  error = 0;

 return error;
}
