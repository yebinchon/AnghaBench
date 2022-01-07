
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct __sctp_missing {int type; int num_missing; } ;
typedef int sctp_param_t ;
typedef int report ;
typedef int __u16 ;


 int SCTP_ERROR_MISS_PARAM ;
 int WORD_ROUND (int) ;
 int htonl (int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct __sctp_missing*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int) ;
 struct sctp_chunk* sctp_make_op_error_space (struct sctp_association const*,struct sctp_chunk*,int ) ;

__attribute__((used)) static int sctp_process_missing_param(const struct sctp_association *asoc,
          sctp_param_t paramtype,
          struct sctp_chunk *chunk,
          struct sctp_chunk **errp)
{
 struct __sctp_missing report;
 __u16 len;

 len = WORD_ROUND(sizeof(report));




 if (!*errp)
  *errp = sctp_make_op_error_space(asoc, chunk, len);

 if (*errp) {
  report.num_missing = htonl(1);
  report.type = paramtype;
  sctp_init_cause(*errp, SCTP_ERROR_MISS_PARAM,
    sizeof(report));
  sctp_addto_chunk(*errp, sizeof(report), &report);
 }


 return 0;
}
