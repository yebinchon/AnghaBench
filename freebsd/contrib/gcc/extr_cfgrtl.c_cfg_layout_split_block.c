
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* rtx ;
typedef TYPE_3__* basic_block ;
struct TYPE_9__ {TYPE_1__* rtl; } ;
struct TYPE_10__ {TYPE_2__ il; } ;
struct TYPE_8__ {int * footer; } ;


 TYPE_3__* rtl_split_block (TYPE_3__*,void*) ;

__attribute__((used)) static basic_block
cfg_layout_split_block (basic_block bb, void *insnp)
{
  rtx insn = insnp;
  basic_block new_bb = rtl_split_block (bb, insn);

  new_bb->il.rtl->footer = bb->il.rtl->footer;
  bb->il.rtl->footer = ((void*)0);

  return new_bb;
}
