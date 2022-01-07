
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct src_mgr_ctrl_blk {int* enb; TYPE_1__ dirty; } ;



__attribute__((used)) static int src_mgr_enb_src(void *blk, unsigned int idx)
{
 ((struct src_mgr_ctrl_blk *)blk)->enb[idx/32] |= (0x1 << (idx%32));
 ((struct src_mgr_ctrl_blk *)blk)->dirty.data |= (0x1 << (idx/32));
 return 0;
}
