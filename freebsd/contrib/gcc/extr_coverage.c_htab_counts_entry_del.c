
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* counts; } ;
typedef TYPE_1__ counts_entry_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
htab_counts_entry_del (void *of)
{
  counts_entry_t *entry = of;

  free (entry->counts);
  free (entry);
}
