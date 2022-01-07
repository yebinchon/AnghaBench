
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sctp_params {int v; TYPE_1__* p; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_ierror_t ;
struct TYPE_2__ {int type; int length; } ;


 int SCTP_ERROR_UNKNOWN_PARAM ;
 int SCTP_IERROR_ERROR ;
 int SCTP_IERROR_NOMEM ;
 int SCTP_IERROR_NO_ERROR ;


 int SCTP_PARAM_ACTION_MASK ;


 int WORD_ROUND (int ) ;
 int ntohs (int ) ;
 int sctp_addto_chunk_fixed (struct sctp_chunk*,int ,int ) ;
 int sctp_init_cause_fixed (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_op_error_fixed (struct sctp_association const*,struct sctp_chunk*) ;

__attribute__((used)) static sctp_ierror_t sctp_process_unk_param(const struct sctp_association *asoc,
         union sctp_params param,
         struct sctp_chunk *chunk,
         struct sctp_chunk **errp)
{
 int retval = SCTP_IERROR_NO_ERROR;

 switch (param.p->type & SCTP_PARAM_ACTION_MASK) {
 case 131:
  retval = SCTP_IERROR_ERROR;
  break;
 case 129:
  break;
 case 130:
  retval = SCTP_IERROR_ERROR;

 case 128:



  if (((void*)0) == *errp)
   *errp = sctp_make_op_error_fixed(asoc, chunk);

  if (*errp) {
   if (!sctp_init_cause_fixed(*errp, SCTP_ERROR_UNKNOWN_PARAM,
     WORD_ROUND(ntohs(param.p->length))))
    sctp_addto_chunk_fixed(*errp,
      WORD_ROUND(ntohs(param.p->length)),
      param.v);
  } else {





   retval = SCTP_IERROR_NOMEM;
  }
  break;
 default:
  break;
 }

 return retval;
}
