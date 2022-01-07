
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int num_data; int * data; } ;


 int gdb_assert (int ) ;
 int memset (int *,int ,int) ;

void
clear_objfile_data (struct objfile *objfile)
{
  gdb_assert (objfile->data != ((void*)0));
  memset (objfile->data, 0, objfile->num_data * sizeof (void *));
}
