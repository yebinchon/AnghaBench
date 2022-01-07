
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_base_table {int nr; int ** sniffer; } ;
typedef int frame_base_sniffer_ftype ;


 int ** xrealloc (int **,int) ;

__attribute__((used)) static void
append_predicate (struct frame_base_table *table,
    frame_base_sniffer_ftype *sniffer)
{
  table->sniffer = xrealloc (table->sniffer,
        ((table->nr + 1)
         * sizeof (frame_base_sniffer_ftype *)));
  table->sniffer[table->nr] = sniffer;
  table->nr++;
}
