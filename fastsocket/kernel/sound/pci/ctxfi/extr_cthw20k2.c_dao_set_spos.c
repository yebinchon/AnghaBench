
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atxcsl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct dao_ctrl_blk {unsigned int atxcsl; TYPE_2__ dirty; } ;



__attribute__((used)) static int dao_set_spos(void *blk, unsigned int spos)
{
 ((struct dao_ctrl_blk *)blk)->atxcsl = spos;
 ((struct dao_ctrl_blk *)blk)->dirty.bf.atxcsl = 1;
 return 0;
}
