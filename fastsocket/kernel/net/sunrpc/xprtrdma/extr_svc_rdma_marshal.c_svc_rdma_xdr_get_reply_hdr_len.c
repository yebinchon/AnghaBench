
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpcrdma_write_array {int wc_nchunks; TYPE_3__* wc_array; scalar_t__ wc_discrim; } ;
struct TYPE_4__ {int * rm_chunks; } ;
struct rpcrdma_msg {TYPE_1__ rm_body; } ;
struct TYPE_5__ {int rs_length; } ;
struct TYPE_6__ {TYPE_2__ wc_target; } ;


 size_t ntohl (int ) ;

int svc_rdma_xdr_get_reply_hdr_len(struct rpcrdma_msg *rmsgp)
{
 struct rpcrdma_write_array *wr_ary;




 wr_ary = (struct rpcrdma_write_array *)
  &rmsgp->rm_body.rm_chunks[1];
 if (wr_ary->wc_discrim)
  wr_ary = (struct rpcrdma_write_array *)
   &wr_ary->wc_array[ntohl(wr_ary->wc_nchunks)].
   wc_target.rs_length;
 else
  wr_ary = (struct rpcrdma_write_array *)
   &wr_ary->wc_nchunks;


 if (wr_ary->wc_discrim)
  wr_ary = (struct rpcrdma_write_array *)
   &wr_ary->wc_array[ntohl(wr_ary->wc_nchunks)];
 else
  wr_ary = (struct rpcrdma_write_array *)
   &wr_ary->wc_nchunks;

 return (unsigned long) wr_ary - (unsigned long) rmsgp;
}
