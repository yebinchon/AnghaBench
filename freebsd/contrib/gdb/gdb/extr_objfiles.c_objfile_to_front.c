
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {struct objfile* next; } ;


 struct objfile* object_files ;

void
objfile_to_front (struct objfile *objfile)
{
  struct objfile **objp;
  for (objp = &object_files; *objp != ((void*)0); objp = &((*objp)->next))
    {
      if (*objp == objfile)
 {

   *objp = objfile->next;

   objfile->next = object_files;
   object_files = objfile;
   break;
 }
    }
}
