
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {size_t pathmtu; } ;


 size_t SCTP_DEFAULT_MAXSEGMENT ;
 struct sctp_chunk* sctp_make_op_error_space (struct sctp_association const*,struct sctp_chunk const*,size_t) ;

__attribute__((used)) static inline struct sctp_chunk *sctp_make_op_error_fixed(
 const struct sctp_association *asoc,
 const struct sctp_chunk *chunk)
{
 size_t size = asoc ? asoc->pathmtu : 0;

 if (!size)
  size = SCTP_DEFAULT_MAXSEGMENT;

 return sctp_make_op_error_space(asoc, chunk, size);
}
