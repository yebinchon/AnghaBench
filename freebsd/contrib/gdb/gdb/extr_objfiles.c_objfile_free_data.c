
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * data; } ;


 int gdb_assert (int ) ;
 int xfree (int *) ;

__attribute__((used)) static void
objfile_free_data (struct objfile *objfile)
{
  gdb_assert (objfile->data != ((void*)0));
  xfree (objfile->data);
  objfile->data = ((void*)0);
}
