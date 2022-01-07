
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int use; } ;
typedef TYPE_1__ eg_cache_entry ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void eg_cache_put(eg_cache_entry *entry)
{
 if (atomic_dec_and_test(&entry->use)) {
  memset(entry, 0, sizeof(eg_cache_entry));
  kfree(entry);
 }

 return;
}
