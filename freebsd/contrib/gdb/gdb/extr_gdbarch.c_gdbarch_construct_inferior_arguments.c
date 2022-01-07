
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {char* (* construct_inferior_arguments ) (struct gdbarch*,int,char**) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 char* stub1 (struct gdbarch*,int,char**) ;

char *
gdbarch_construct_inferior_arguments (struct gdbarch *gdbarch, int argc, char **argv)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->construct_inferior_arguments != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_construct_inferior_arguments called\n");
  return gdbarch->construct_inferior_arguments (gdbarch, argc, argv);
}
