
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_print_symbol_type ;
typedef int bfd ;
struct TYPE_6__ {char* name; TYPE_1__* section; } ;
typedef TYPE_2__ asymbol ;
struct TYPE_5__ {char* name; } ;
typedef int FILE ;



 int bfd_print_symbol_vandf (int *,void*,TYPE_2__*) ;
 int fprintf (int *,char*,char*,...) ;

__attribute__((used)) static void
srec_print_symbol (bfd *abfd,
     void * afile,
     asymbol *symbol,
     bfd_print_symbol_type how)
{
  FILE *file = (FILE *) afile;

  switch (how)
    {
    case 128:
      fprintf (file, "%s", symbol->name);
      break;
    default:
      bfd_print_symbol_vandf (abfd, (void *) file, symbol);
      fprintf (file, " %-5s %s",
        symbol->section->name,
        symbol->name);
    }
}
