
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sctp_params {int v; TYPE_1__* p; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {int length; } ;


 int SCTP_ERROR_DNS_FAILED ;
 int ntohs (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int ,int ) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_op_error_space (struct sctp_association const*,struct sctp_chunk*,int ) ;

__attribute__((used)) static int sctp_process_hn_param(const struct sctp_association *asoc,
     union sctp_params param,
     struct sctp_chunk *chunk,
     struct sctp_chunk **errp)
{
 __u16 len = ntohs(param.p->length);






 if (*errp)
  sctp_chunk_free(*errp);

 *errp = sctp_make_op_error_space(asoc, chunk, len);

 if (*errp) {
  sctp_init_cause(*errp, SCTP_ERROR_DNS_FAILED, len);
  sctp_addto_chunk(*errp, len, param.v);
 }


 return 0;
}
