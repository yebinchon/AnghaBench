
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_data {size_t index; int init_p; void* (* init ) (struct gdbarch*) ;} ;
struct gdbarch {size_t nr_data; void** data; scalar_t__ initialized_p; } ;


 int gdb_assert (int) ;
 void* stub1 (struct gdbarch*) ;

void *
gdbarch_data (struct gdbarch *gdbarch, struct gdbarch_data *data)
{
  gdb_assert (data->index < gdbarch->nr_data);



  if (gdbarch->data[data->index] == ((void*)0)
      && gdbarch->initialized_p)
    {

      gdb_assert (data->init_p);
      data->init_p = 0;
      gdb_assert (data->init != ((void*)0));
      gdbarch->data[data->index] = data->init (gdbarch);
      data->init_p = 1;
      gdb_assert (gdbarch->data[data->index] != ((void*)0));
    }
  return gdbarch->data[data->index];
}
