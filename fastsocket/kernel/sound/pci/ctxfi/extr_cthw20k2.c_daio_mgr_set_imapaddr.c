
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int daoimap; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {unsigned int idx; } ;
struct daio_mgr_ctrl_blk {TYPE_3__ dirty; TYPE_1__ daoimap; } ;



__attribute__((used)) static int daio_mgr_set_imapaddr(void *blk, unsigned int addr)
{
 ((struct daio_mgr_ctrl_blk *)blk)->daoimap.idx = addr;
 ((struct daio_mgr_ctrl_blk *)blk)->dirty.bf.daoimap = 1;
 return 0;
}
