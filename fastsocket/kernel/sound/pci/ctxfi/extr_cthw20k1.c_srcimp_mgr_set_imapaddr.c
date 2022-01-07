
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int srcimap; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {unsigned int idx; } ;
struct srcimp_mgr_ctrl_blk {TYPE_3__ dirty; TYPE_1__ srcimap; } ;



__attribute__((used)) static int srcimp_mgr_set_imapaddr(void *blk, unsigned int addr)
{
 struct srcimp_mgr_ctrl_blk *ctl = blk;

 ctl->srcimap.idx = addr;
 ctl->dirty.bf.srcimap = 1;
 return 0;
}
