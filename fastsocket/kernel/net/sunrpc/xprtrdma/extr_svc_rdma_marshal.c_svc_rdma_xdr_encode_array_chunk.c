
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rpcrdma_write_array {TYPE_1__* wc_array; } ;
struct rpcrdma_segment {int rs_offset; void* rs_length; void* rs_handle; } ;
struct TYPE_2__ {struct rpcrdma_segment wc_target; } ;


 void* htonl (int ) ;
 int xdr_encode_hyper (int *,int ) ;

void svc_rdma_xdr_encode_array_chunk(struct rpcrdma_write_array *ary,
         int chunk_no,
         u32 rs_handle, u64 rs_offset,
         u32 write_len)
{
 struct rpcrdma_segment *seg = &ary->wc_array[chunk_no].wc_target;
 seg->rs_handle = htonl(rs_handle);
 seg->rs_length = htonl(write_len);
 xdr_encode_hyper((u32 *) &seg->rs_offset, rs_offset);
}
