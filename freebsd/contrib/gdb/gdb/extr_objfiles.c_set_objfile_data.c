
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile_data {size_t index; } ;
struct objfile {size_t num_data; void** data; } ;


 int gdb_assert (int) ;

void
set_objfile_data (struct objfile *objfile, const struct objfile_data *data,
    void *value)
{
  gdb_assert (data->index < objfile->num_data);
  objfile->data[data->index] = value;
}
