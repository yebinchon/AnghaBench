
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rs_length; } ;
struct rpcrdma_read_chunk {scalar_t__ rc_discrim; TYPE_1__ rc_target; } ;



void svc_rdma_rcl_chunk_counts(struct rpcrdma_read_chunk *ch,
          int *ch_count, int *byte_count)
{

 *byte_count = 0;
 *ch_count = 0;
 for (; ch->rc_discrim != 0; ch++) {
  *byte_count = *byte_count + ch->rc_target.rs_length;
  *ch_count = *ch_count + 1;
 }
}
