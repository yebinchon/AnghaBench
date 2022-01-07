
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ rs_handle; scalar_t__ rs_length; int rs_offset; } ;
struct rpcrdma_read_chunk {scalar_t__ rc_discrim; scalar_t__ rc_position; TYPE_1__ rc_target; } ;


 int dprintk (char*,int *,struct rpcrdma_read_chunk*) ;
 void* ntohl (scalar_t__) ;
 int put_unaligned (int ,int *) ;
 int xdr_decode_hyper (int *,int *) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static u32 *decode_read_list(u32 *va, u32 *vaend)
{
 struct rpcrdma_read_chunk *ch = (struct rpcrdma_read_chunk *)va;

 while (ch->rc_discrim != xdr_zero) {
  u64 ch_offset;

  if (((unsigned long)ch + sizeof(struct rpcrdma_read_chunk)) >
      (unsigned long)vaend) {
   dprintk("svcrdma: vaend=%p, ch=%p\n", vaend, ch);
   return ((void*)0);
  }

  ch->rc_discrim = ntohl(ch->rc_discrim);
  ch->rc_position = ntohl(ch->rc_position);
  ch->rc_target.rs_handle = ntohl(ch->rc_target.rs_handle);
  ch->rc_target.rs_length = ntohl(ch->rc_target.rs_length);
  va = (u32 *)&ch->rc_target.rs_offset;
  xdr_decode_hyper(va, &ch_offset);
  put_unaligned(ch_offset, (u64 *)va);
  ch++;
 }
 return (u32 *)&ch->rc_position;
}
