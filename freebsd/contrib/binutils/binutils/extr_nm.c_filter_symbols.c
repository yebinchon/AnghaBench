
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {int flags; int section; } ;
typedef TYPE_1__ asymbol ;


 int BSF_DEBUGGING ;
 int BSF_GLOBAL ;
 int BSF_WEAK ;
 int PROGRESS (int) ;
 int allow_special_symbols ;
 int bfd_fatal (int ) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 scalar_t__ bfd_is_com_section (int ) ;
 scalar_t__ bfd_is_target_special_symbol (int *,TYPE_1__*) ;
 int bfd_is_und_section (int ) ;
 TYPE_1__* bfd_make_empty_symbol (int *) ;
 TYPE_1__* bfd_minisymbol_to_symbol (int *,int ,void const*,TYPE_1__*) ;
 scalar_t__ defined_only ;
 scalar_t__ external_only ;
 int memcpy (int *,int *,unsigned int) ;
 int print_debug_syms ;
 scalar_t__ sort_by_size ;
 scalar_t__ undefined_only ;

__attribute__((used)) static long
filter_symbols (bfd *abfd, bfd_boolean dynamic, void *minisyms,
  long symcount, unsigned int size)
{
  bfd_byte *from, *fromend, *to;
  asymbol *store;

  store = bfd_make_empty_symbol (abfd);
  if (store == ((void*)0))
    bfd_fatal (bfd_get_filename (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  to = (bfd_byte *) minisyms;

  for (; from < fromend; from += size)
    {
      int keep = 0;
      asymbol *sym;

      PROGRESS (1);

      sym = bfd_minisymbol_to_symbol (abfd, dynamic, (const void *) from, store);
      if (sym == ((void*)0))
 bfd_fatal (bfd_get_filename (abfd));

      if (undefined_only)
 keep = bfd_is_und_section (sym->section);
      else if (external_only)
 keep = ((sym->flags & BSF_GLOBAL) != 0
  || (sym->flags & BSF_WEAK) != 0
  || bfd_is_und_section (sym->section)
  || bfd_is_com_section (sym->section));
      else
 keep = 1;

      if (keep
   && ! print_debug_syms
   && (sym->flags & BSF_DEBUGGING) != 0)
 keep = 0;

      if (keep
   && sort_by_size
   && (bfd_is_abs_section (sym->section)
       || bfd_is_und_section (sym->section)))
 keep = 0;

      if (keep
   && defined_only)
 {
   if (bfd_is_und_section (sym->section))
     keep = 0;
 }

      if (keep
   && bfd_is_target_special_symbol (abfd, sym)
   && ! allow_special_symbols)
 keep = 0;

      if (keep)
 {
   memcpy (to, from, size);
   to += size;
 }
    }

  return (to - (bfd_byte *) minisyms) / size;
}
