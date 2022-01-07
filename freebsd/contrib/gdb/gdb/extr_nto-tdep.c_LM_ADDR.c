
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {TYPE_1__* lm_info; } ;
struct link_map_offsets {int l_addr_size; scalar_t__ l_addr_offset; } ;
struct TYPE_2__ {scalar_t__ lm; } ;
typedef int CORE_ADDR ;


 int extract_signed_integer (scalar_t__,int ) ;
 struct link_map_offsets* nto_fetch_link_map_offsets () ;

__attribute__((used)) static CORE_ADDR
LM_ADDR (struct so_list *so)
{
  struct link_map_offsets *lmo = nto_fetch_link_map_offsets ();

  return (CORE_ADDR) extract_signed_integer (so->lm_info->lm +
          lmo->l_addr_offset,
          lmo->l_addr_size);
}
