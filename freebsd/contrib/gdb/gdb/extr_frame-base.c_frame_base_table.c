
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_base_table {int dummy; } ;


 int frame_base_data ;
 struct frame_base_table* frame_base_init (struct gdbarch*) ;
 struct frame_base_table* gdbarch_data (struct gdbarch*,int ) ;
 int set_gdbarch_data (struct gdbarch*,int ,struct frame_base_table*) ;

__attribute__((used)) static struct frame_base_table *
frame_base_table (struct gdbarch *gdbarch)
{
  struct frame_base_table *table = gdbarch_data (gdbarch, frame_base_data);
  if (table == ((void*)0))
    {


      table = frame_base_init (gdbarch);
      set_gdbarch_data (gdbarch, frame_base_data, table);
    }
  return table;
}
