
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ hashval_t ;
struct TYPE_2__ {int ident; scalar_t__ ctr; } ;
typedef TYPE_1__ counts_entry_t ;


 int GCOV_COUNTERS ;

__attribute__((used)) static hashval_t
htab_counts_entry_hash (const void *of)
{
  const counts_entry_t *entry = of;

  return entry->ident * GCOV_COUNTERS + entry->ctr;
}
