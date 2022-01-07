
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {scalar_t__ level; TYPE_1__* branch_info; } ;
struct addr_map_symbol {int addr; int sym; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {struct addr_map_symbol to; } ;


 scalar_t__ _sort__sym_cmp (int ,int ,int ,int ) ;

__attribute__((used)) static int64_t
sort__sym_to_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct addr_map_symbol *to_l = &left->branch_info->to;
 struct addr_map_symbol *to_r = &right->branch_info->to;

 if (!to_l->sym && !to_r->sym)
  return right->level - left->level;

 return _sort__sym_cmp(to_l->sym, to_r->sym, to_l->addr, to_r->addr);
}
