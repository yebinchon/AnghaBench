
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_base_table {int dummy; } ;
typedef int frame_base_sniffer_ftype ;


 int append_predicate (struct frame_base_table*,int *) ;
 struct frame_base_table* frame_base_table (struct gdbarch*) ;

void
frame_base_append_sniffer (struct gdbarch *gdbarch,
      frame_base_sniffer_ftype *sniffer)
{
  struct frame_base_table *table = frame_base_table (gdbarch);
  append_predicate (table, sniffer);
}
