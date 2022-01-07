
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_kvm_stat {int sort_key; int compare; } ;
struct TYPE_2__ {int key; scalar_t__ name; } ;


 TYPE_1__* keys ;
 int pr_err (char*,int ) ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static bool select_key(struct perf_kvm_stat *kvm)
{
 int i;

 for (i = 0; keys[i].name; i++) {
  if (!strcmp(keys[i].name, kvm->sort_key)) {
   kvm->compare = keys[i].key;
   return 1;
  }
 }

 pr_err("Unknown compare key:%s\n", kvm->sort_key);
 return 0;
}
