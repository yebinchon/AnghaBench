
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enbsa; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct src_mgr_ctrl_blk {int enbsa; int* enb; TYPE_2__ dirty; } ;



__attribute__((used)) static int src_mgr_enbs_src(void *blk, unsigned int idx)
{
 ((struct src_mgr_ctrl_blk *)blk)->enbsa |= (0x1 << ((idx%128)/4));
 ((struct src_mgr_ctrl_blk *)blk)->dirty.bf.enbsa = 1;
 ((struct src_mgr_ctrl_blk *)blk)->enb[idx/32] |= (0x1 << (idx%32));
 return 0;
}
