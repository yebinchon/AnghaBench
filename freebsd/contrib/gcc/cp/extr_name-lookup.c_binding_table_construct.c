
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* binding_table ;
struct TYPE_3__ {size_t chain_count; int chain; scalar_t__ entry_count; } ;


 int GGC_CNEWVEC (int ,size_t) ;
 int binding_entry ;

__attribute__((used)) static inline void
binding_table_construct (binding_table table, size_t chain_count)
{
  table->chain_count = chain_count;
  table->entry_count = 0;
  table->chain = GGC_CNEWVEC (binding_entry, table->chain_count);
}
