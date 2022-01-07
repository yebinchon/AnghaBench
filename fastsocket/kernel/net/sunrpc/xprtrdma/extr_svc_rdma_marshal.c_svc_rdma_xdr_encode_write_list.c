
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpcrdma_write_array {TYPE_2__* wc_array; int wc_nchunks; int wc_discrim; } ;
struct TYPE_6__ {void** rm_chunks; } ;
struct rpcrdma_msg {TYPE_3__ rm_body; } ;
struct TYPE_4__ {void* rs_length; void* rs_handle; } ;
struct TYPE_5__ {TYPE_1__ wc_target; } ;


 int htonl (int) ;
 int xdr_one ;
 void* xdr_zero ;

void svc_rdma_xdr_encode_write_list(struct rpcrdma_msg *rmsgp, int chunks)
{
 struct rpcrdma_write_array *ary;


 rmsgp->rm_body.rm_chunks[0] = xdr_zero;


 ary = (struct rpcrdma_write_array *)
  &rmsgp->rm_body.rm_chunks[1];
 ary->wc_discrim = xdr_one;
 ary->wc_nchunks = htonl(chunks);


 ary->wc_array[chunks].wc_target.rs_handle = xdr_zero;


 ary->wc_array[chunks].wc_target.rs_length = xdr_zero;
}
