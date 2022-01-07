
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*,char const*) ;} ;
typedef int bfd ;
typedef int asymbol ;


 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 char* bfd_asymbol_name (int *) ;
 char* bfd_demangle (int *,char const*,int) ;
 scalar_t__ do_demangle ;
 int free (char*) ;
 int printf (char*,char const*) ;
 int stub1 (int ,char*,char const*) ;

__attribute__((used)) static void
objdump_print_symname (bfd *abfd, struct disassemble_info *info,
         asymbol *sym)
{
  char *alloc;
  const char *name;

  alloc = ((void*)0);
  name = bfd_asymbol_name (sym);
  if (do_demangle && name[0] != '\0')
    {

      alloc = bfd_demangle (abfd, name, DMGL_ANSI | DMGL_PARAMS);
      if (alloc != ((void*)0))
 name = alloc;
    }

  if (info != ((void*)0))
    (*info->fprintf_func) (info->stream, "%s", name);
  else
    printf ("%s", name);

  if (alloc != ((void*)0))
    free (alloc);
}
