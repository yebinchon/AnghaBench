
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {int flags; int name; int section; } ;
typedef TYPE_1__ asymbol ;


 int BSF_GLOBAL ;
 int BSF_WEAK ;
 int FALSE ;
 int bfd_fatal (int ) ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_is_com_section (int ) ;
 int bfd_is_und_section (int ) ;
 TYPE_1__* bfd_make_empty_symbol (int *) ;
 TYPE_1__* bfd_minisymbol_to_symbol (int *,int ,void const*,TYPE_1__*) ;
 int match_exclude (int ) ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static long
filter_symbols (bfd *abfd, void *minisyms, long symcount, unsigned int size)
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

      sym = bfd_minisymbol_to_symbol (abfd, FALSE, (const void *) from, store);
      if (sym == ((void*)0))
 bfd_fatal (bfd_get_filename (abfd));


      keep = (((sym->flags & BSF_GLOBAL) != 0
        || (sym->flags & BSF_WEAK) != 0
        || bfd_is_com_section (sym->section))
       && ! bfd_is_und_section (sym->section));

      keep = keep && ! match_exclude (sym->name);

      if (keep)
 {
   memcpy (to, from, size);
   to += size;
 }
    }

  return (to - (bfd_byte *) minisyms) / size;
}
