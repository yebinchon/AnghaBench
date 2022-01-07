
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {void* demangler; int ** syms; int * abfd; int * filename; scalar_t__ parameter; int * stack; scalar_t__ indent; int * f; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
typedef int FILE ;


 scalar_t__ debug_write (void*,int *,void*) ;
 int fputs (char*,int *) ;
 int pr_fns ;
 int tg_fns ;

bfd_boolean
print_debugging_info (FILE *f, void *dhandle, bfd *abfd, asymbol **syms,
        void *demangler, bfd_boolean as_tags)
{
  struct pr_handle info;

  info.f = f;
  info.indent = 0;
  info.stack = ((void*)0);
  info.parameter = 0;
  info.filename = ((void*)0);
  info.abfd = abfd;
  info.syms = syms;
  info.demangler = demangler;

  if (as_tags)
    {
      fputs ("!_TAG_FILE_FORMAT\t2\t/extended format/\n", f);
      fputs ("!_TAG_FILE_SORTED\t0\t/0=unsorted, 1=sorted/\n", f);
      fputs ("!_TAG_PROGRAM_AUTHOR\tIan Lance Taylor, Salvador E. Tropea and others\t//\n", f);
      fputs ("!_TAG_PROGRAM_NAME\tobjdump\t/From GNU binutils/\n", f);
    }

  return as_tags ? debug_write (dhandle, &tg_fns, (void *) & info)
    : debug_write (dhandle, &pr_fns, (void *) & info);
}
