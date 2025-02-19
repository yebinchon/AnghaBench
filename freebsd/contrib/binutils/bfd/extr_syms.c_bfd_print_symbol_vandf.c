
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd ;
struct TYPE_5__ {int flags; scalar_t__ value; TYPE_1__* section; } ;
typedef TYPE_2__ asymbol ;
struct TYPE_4__ {scalar_t__ vma; } ;
typedef int FILE ;


 int BSF_CONSTRUCTOR ;
 int BSF_DEBUGGING ;
 int BSF_DYNAMIC ;
 int BSF_FILE ;
 int BSF_FUNCTION ;
 int BSF_GLOBAL ;
 int BSF_INDIRECT ;
 int BSF_LOCAL ;
 int BSF_OBJECT ;
 int BSF_WARNING ;
 int BSF_WEAK ;
 int bfd_fprintf_vma (int *,int *,scalar_t__) ;
 int fprintf (int *,char*,char,char,char,char,char,char,float) ;

void
bfd_print_symbol_vandf (bfd *abfd, void *arg, asymbol *symbol)
{
  FILE *file = arg;

  flagword type = symbol->flags;

  if (symbol->section != ((void*)0))
    bfd_fprintf_vma (abfd, file, symbol->value + symbol->section->vma);
  else
    bfd_fprintf_vma (abfd, file, symbol->value);




  fprintf (file, " %c%c%c%c%c%c%c",
    ((type & BSF_LOCAL)
     ? (type & BSF_GLOBAL) ? '!' : 'l'
     : (type & BSF_GLOBAL) ? 'g' : ' '),
    (type & BSF_WEAK) ? 'w' : ' ',
    (type & BSF_CONSTRUCTOR) ? 'C' : ' ',
    (type & BSF_WARNING) ? 'W' : ' ',
    (type & BSF_INDIRECT) ? 'I' : ' ',
    (type & BSF_DEBUGGING) ? 'd' : (type & BSF_DYNAMIC) ? 'D' : ' ',
    ((type & BSF_FUNCTION)
     ? 'F'
     : ((type & BSF_FILE)
        ? 'f'
        : ((type & BSF_OBJECT) ? 'O' : ' '))));
}
