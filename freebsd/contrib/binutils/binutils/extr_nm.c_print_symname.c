
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 char* bfd_demangle (int *,char const*,int) ;
 scalar_t__ do_demangle ;
 int free (char*) ;
 int printf (char const*,char const*) ;

__attribute__((used)) static void
print_symname (const char *format, const char *name, bfd *abfd)
{
  if (do_demangle && *name)
    {
      char *res = bfd_demangle (abfd, name, DMGL_ANSI | DMGL_PARAMS);

      if (res != ((void*)0))
 {
   printf (format, res);
   free (res);
   return;
 }
    }

  printf (format, name);
}
