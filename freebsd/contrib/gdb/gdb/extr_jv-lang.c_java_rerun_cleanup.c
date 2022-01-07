
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * class_symtab ;
 int * dynamics_objfile ;
 int free_objfile (int *) ;
 int free_symtab (int *) ;
 int * java_object_type ;

void
java_rerun_cleanup (void)
{
  if (class_symtab != ((void*)0))
    {
      free_symtab (class_symtab);
      class_symtab = ((void*)0);
    }
  if (dynamics_objfile != ((void*)0))
    {
      free_objfile (dynamics_objfile);
      dynamics_objfile = ((void*)0);
    }

  java_object_type = ((void*)0);
}
