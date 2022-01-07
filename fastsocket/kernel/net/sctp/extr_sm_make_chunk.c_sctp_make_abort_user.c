
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct msghdr {int msg_iov; } ;
typedef int sctp_errhdr_t ;


 int GFP_KERNEL ;
 int SCTP_ERROR_USER_ABORT ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int memcpy_fromiovec (void*,int ,size_t) ;
 int sctp_addto_chunk (struct sctp_chunk*,size_t,void*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,size_t) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,int *,int) ;

struct sctp_chunk *sctp_make_abort_user(const struct sctp_association *asoc,
     const struct msghdr *msg,
     size_t paylen)
{
 struct sctp_chunk *retval;
 void *payload = ((void*)0);
 int err;

 retval = sctp_make_abort(asoc, ((void*)0), sizeof(sctp_errhdr_t) + paylen);
 if (!retval)
  goto err_chunk;

 if (paylen) {

  payload = kmalloc(paylen, GFP_KERNEL);
  if (!payload)
   goto err_payload;

  err = memcpy_fromiovec(payload, msg->msg_iov, paylen);
  if (err < 0)
   goto err_copy;
 }

 sctp_init_cause(retval, SCTP_ERROR_USER_ABORT, paylen);
 sctp_addto_chunk(retval, paylen, payload);

 if (paylen)
  kfree(payload);

 return retval;

err_copy:
 kfree(payload);
err_payload:
 sctp_chunk_free(retval);
 retval = ((void*)0);
err_chunk:
 return retval;
}
