
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {scalar_t__ level; TYPE_1__* branch_info; } ;
struct addr_map_symbol {int addr; int sym; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {struct addr_map_symbol from; } ;


 scalar_t__ _sort__sym_cmp (int ,int ,int ,int ) ;

__attribute__((used)) static int64_t
sort__sym_from_cmp(struct hist_entry *left, struct hist_entry *right)
{
 struct addr_map_symbol *from_l = &left->branch_info->from;
 struct addr_map_symbol *from_r = &right->branch_info->from;

 if (!from_l->sym && !from_r->sym)
  return right->level - left->level;

 return _sort__sym_cmp(from_l->sym, from_r->sym, from_l->addr,
        from_r->addr);
}
