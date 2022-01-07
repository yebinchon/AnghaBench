
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_entry {TYPE_2__* branch_info; } ;
typedef int int64_t ;
struct TYPE_3__ {int map; } ;
struct TYPE_4__ {TYPE_1__ to; } ;


 int _sort__dso_cmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__dso_to_cmp(struct hist_entry *left, struct hist_entry *right)
{
 return _sort__dso_cmp(left->branch_info->to.map,
         right->branch_info->to.map);
}
