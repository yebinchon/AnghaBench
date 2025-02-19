
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rpcrdma_write_chunk {int dummy; } ;
struct rpcrdma_write_array {scalar_t__ wc_discrim; scalar_t__ wc_nchunks; TYPE_2__* wc_array; } ;
struct TYPE_3__ {scalar_t__ rs_handle; scalar_t__ rs_length; int rs_offset; } ;
struct TYPE_4__ {TYPE_1__ wc_target; } ;


 int dprintk (char*,struct rpcrdma_write_array*,int,...) ;
 void* ntohl (scalar_t__) ;
 int put_unaligned (int ,int *) ;
 int xdr_decode_hyper (int *,int *) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static u32 *decode_reply_array(u32 *va, u32 *vaend)
{
 int ch_no;
 struct rpcrdma_write_array *ary =
  (struct rpcrdma_write_array *)va;


 if (ary->wc_discrim == xdr_zero)
  return (u32 *)&ary->wc_nchunks;

 if ((unsigned long)ary + sizeof(struct rpcrdma_write_array) >
     (unsigned long)vaend) {
  dprintk("svcrdma: ary=%p, vaend=%p\n", ary, vaend);
  return ((void*)0);
 }
 ary->wc_discrim = ntohl(ary->wc_discrim);
 ary->wc_nchunks = ntohl(ary->wc_nchunks);
 if (((unsigned long)&ary->wc_array[0] +
      (sizeof(struct rpcrdma_write_chunk) * ary->wc_nchunks)) >
     (unsigned long)vaend) {
  dprintk("svcrdma: ary=%p, wc_nchunks=%d, vaend=%p\n",
   ary, ary->wc_nchunks, vaend);
  return ((void*)0);
 }
 for (ch_no = 0; ch_no < ary->wc_nchunks; ch_no++) {
  u64 ch_offset;

  ary->wc_array[ch_no].wc_target.rs_handle =
   ntohl(ary->wc_array[ch_no].wc_target.rs_handle);
  ary->wc_array[ch_no].wc_target.rs_length =
   ntohl(ary->wc_array[ch_no].wc_target.rs_length);
  va = (u32 *)&ary->wc_array[ch_no].wc_target.rs_offset;
  xdr_decode_hyper(va, &ch_offset);
  put_unaligned(ch_offset, (u64 *)va);
 }

 return (u32 *)&ary->wc_array[ch_no];
}
