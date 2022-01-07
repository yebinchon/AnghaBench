
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* to_sections; int * to_sections_end; } ;


 int CLEAR_SOLIB () ;
 int bfd_close (int *) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int * core_bfd ;
 int * core_gdbarch ;
 TYPE_1__ core_ops ;
 int * core_vec ;
 int inferior_ptid ;
 int null_ptid ;
 int warning (char*,char*,int ) ;
 int xfree (char*) ;

__attribute__((used)) static void
core_close (int quitting)
{
  char *name;

  if (core_bfd)
    {
      inferior_ptid = null_ptid;







      name = bfd_get_filename (core_bfd);
      if (!bfd_close (core_bfd))
 warning ("cannot close \"%s\": %s",
   name, bfd_errmsg (bfd_get_error ()));
      xfree (name);
      core_bfd = ((void*)0);
      if (core_ops.to_sections)
 {
   xfree (core_ops.to_sections);
   core_ops.to_sections = ((void*)0);
   core_ops.to_sections_end = ((void*)0);
 }
    }
  core_vec = ((void*)0);
  core_gdbarch = ((void*)0);
}
