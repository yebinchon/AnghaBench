
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_data {size_t index; } ;
struct gdbarch {size_t nr_data; int ** data; } ;


 int gdb_assert (int) ;

void
set_gdbarch_data (struct gdbarch *gdbarch,
                  struct gdbarch_data *data,
                  void *pointer)
{
  gdb_assert (data->index < gdbarch->nr_data);
  gdb_assert (gdbarch->data[data->index] == ((void*)0));
  gdbarch->data[data->index] = pointer;
}
