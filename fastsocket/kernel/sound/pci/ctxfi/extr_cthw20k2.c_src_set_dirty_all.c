
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct src_rsc_ctrl_blk {TYPE_1__ dirty; } ;



__attribute__((used)) static int src_set_dirty_all(void *blk)
{
 ((struct src_rsc_ctrl_blk *)blk)->dirty.data = ~(0x0);
 return 0;
}
