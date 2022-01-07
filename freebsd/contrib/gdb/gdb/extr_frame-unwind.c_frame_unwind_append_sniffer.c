
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_unwind_table {int dummy; } ;
typedef int frame_unwind_sniffer_ftype ;


 int append_predicate (struct frame_unwind_table*,int *) ;
 int frame_unwind_data ;
 struct frame_unwind_table* frame_unwind_init (struct gdbarch*) ;
 struct frame_unwind_table* gdbarch_data (struct gdbarch*,int ) ;
 int set_gdbarch_data (struct gdbarch*,int ,struct frame_unwind_table*) ;

void
frame_unwind_append_sniffer (struct gdbarch *gdbarch,
        frame_unwind_sniffer_ftype *sniffer)
{
  struct frame_unwind_table *table =
    gdbarch_data (gdbarch, frame_unwind_data);
  if (table == ((void*)0))
    {


      table = frame_unwind_init (gdbarch);
      set_gdbarch_data (gdbarch, frame_unwind_data, table);
    }
  append_predicate (table, sniffer);
}
