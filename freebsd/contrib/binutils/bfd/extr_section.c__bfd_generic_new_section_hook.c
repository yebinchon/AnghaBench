
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {TYPE_2__* symbol; TYPE_2__** symbol_ptr_ptr; int name; } ;
typedef TYPE_1__ asection ;
struct TYPE_5__ {int flags; TYPE_1__* section; scalar_t__ value; int name; } ;


 int BSF_SECTION_SYM ;
 int FALSE ;
 int TRUE ;
 TYPE_2__* bfd_make_empty_symbol (int *) ;

bfd_boolean
_bfd_generic_new_section_hook (bfd *abfd, asection *newsect)
{
  newsect->symbol = bfd_make_empty_symbol (abfd);
  if (newsect->symbol == ((void*)0))
    return FALSE;

  newsect->symbol->name = newsect->name;
  newsect->symbol->value = 0;
  newsect->symbol->section = newsect;
  newsect->symbol->flags = BSF_SECTION_SYM;

  newsect->symbol_ptr_ptr = &newsect->symbol;
  return TRUE;
}
