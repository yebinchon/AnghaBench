
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_DISPOSITION_DISCARD ;

__attribute__((used)) static sctp_disposition_t sctp_sf_do_dupcook_c(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     sctp_cmd_seq_t *commands,
     struct sctp_association *new_asoc)
{




 return SCTP_DISPOSITION_DISCARD;
}
