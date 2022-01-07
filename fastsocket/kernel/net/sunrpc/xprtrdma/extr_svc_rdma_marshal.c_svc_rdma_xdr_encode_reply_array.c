
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_write_array {int wc_nchunks; int wc_discrim; } ;


 int htonl (int) ;
 int xdr_one ;

void svc_rdma_xdr_encode_reply_array(struct rpcrdma_write_array *ary,
     int chunks)
{
 ary->wc_discrim = xdr_one;
 ary->wc_nchunks = htonl(chunks);
}
