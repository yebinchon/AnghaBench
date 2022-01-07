
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {TYPE_5__* head; } ;
struct svc_rqst {TYPE_6__ rq_arg; } ;
struct rpcrdma_write_array {scalar_t__ wc_discrim; size_t wc_nchunks; TYPE_4__* wc_array; } ;
struct rpcrdma_read_chunk {scalar_t__ rc_discrim; int rc_position; } ;
struct TYPE_7__ {int* rm_pempty; } ;
struct TYPE_8__ {int* rm_chunks; TYPE_1__ rm_padded; } ;
struct rpcrdma_msg {scalar_t__ rm_type; TYPE_2__ rm_body; } ;
struct TYPE_11__ {int* iov_base; int iov_len; } ;
struct TYPE_9__ {int rs_length; } ;
struct TYPE_10__ {TYPE_3__ wc_target; } ;


 scalar_t__ RDMA_MSGP ;
 int dprintk (char*,struct svc_rqst*) ;
 scalar_t__ xdr_zero ;

int svc_rdma_xdr_decode_deferred_req(struct svc_rqst *rqstp)
{
 struct rpcrdma_msg *rmsgp = ((void*)0);
 struct rpcrdma_read_chunk *ch;
 struct rpcrdma_write_array *ary;
 u32 *va;
 u32 hdrlen;

 dprintk("svcrdma: processing deferred RDMA header on rqstp=%p\n",
  rqstp);
 rmsgp = (struct rpcrdma_msg *)rqstp->rq_arg.head[0].iov_base;


 if (rmsgp->rm_type == RDMA_MSGP) {
  va = &rmsgp->rm_body.rm_padded.rm_pempty[4];
  rqstp->rq_arg.head[0].iov_base = va;
  hdrlen = (u32)((unsigned long)va - (unsigned long)rmsgp);
  rqstp->rq_arg.head[0].iov_len -= hdrlen;
  return hdrlen;
 }




 va = &rmsgp->rm_body.rm_chunks[0];


 for (ch = (struct rpcrdma_read_chunk *)va;
      ch->rc_discrim != xdr_zero; ch++);
 va = (u32 *)&ch->rc_position;


 ary = (struct rpcrdma_write_array *)va;
 if (ary->wc_discrim == xdr_zero)
  va = (u32 *)&ary->wc_nchunks;
 else




  va = (u32 *)&ary->wc_array[ary->wc_nchunks].wc_target.rs_length;


 ary = (struct rpcrdma_write_array *)va;
 if (ary->wc_discrim == xdr_zero)
  va = (u32 *)&ary->wc_nchunks;
 else
  va = (u32 *)&ary->wc_array[ary->wc_nchunks];

 rqstp->rq_arg.head[0].iov_base = va;
 hdrlen = (unsigned long)va - (unsigned long)rmsgp;
 rqstp->rq_arg.head[0].iov_len -= hdrlen;

 return hdrlen;
}
