
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eh_region {int landing_pad; } ;
typedef scalar_t__ rtx ;


 int NULL_RTX ;
 scalar_t__ alloc_INSN_LIST (int ,int ) ;

__attribute__((used)) static void
arh_to_landing_pad (struct eh_region *region, void *data)
{
  rtx *p_handlers = data;
  if (! *p_handlers)
    *p_handlers = alloc_INSN_LIST (region->landing_pad, NULL_RTX);
}
