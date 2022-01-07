
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_region {int label; } ;
typedef int rtx ;


 int alloc_INSN_LIST (int ,int ) ;

__attribute__((used)) static void
arh_to_label (struct eh_region *region, void *data)
{
  rtx *p_handlers = data;
  *p_handlers = alloc_INSN_LIST (region->label, *p_handlers);
}
