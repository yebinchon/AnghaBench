
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_print_symbol_type ;
typedef int bfd ;
struct TYPE_7__ {char* name; TYPE_2__* section; } ;
typedef TYPE_1__ asymbol ;
struct TYPE_8__ {char* name; } ;
typedef TYPE_2__ asection ;
struct TYPE_9__ {int index; } ;
typedef int FILE ;


 int BFD_FAIL () ;



 int bfd_print_symbol_vandf (int *,void*,TYPE_1__*) ;
 int fprintf (int *,char*,...) ;
 TYPE_3__* ieee_symbol (TYPE_1__*) ;

__attribute__((used)) static void
ieee_print_symbol (bfd *abfd,
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
    case 129:
      BFD_FAIL ();
      break;
    case 130:
      {
 const char *section_name =
   (symbol->section == (asection *) ((void*)0)
    ? "*abs"
    : symbol->section->name);

 if (symbol->name[0] == ' ')
   fprintf (file, "* empty table entry ");
 else
   {
     bfd_print_symbol_vandf (abfd, (void *) file, symbol);

     fprintf (file, " %-5s %04x %02x %s",
       section_name,
       (unsigned) ieee_symbol (symbol)->index,
       (unsigned) 0,
       symbol->name);
   }
      }
      break;
    }
}
