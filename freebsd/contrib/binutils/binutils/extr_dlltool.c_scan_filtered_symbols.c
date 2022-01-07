
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ asymbol ;


 int BSF_FUNCTION ;
 int FALSE ;
 scalar_t__ add_stdcall_alias ;
 char* bfd_asymbol_name (TYPE_1__*) ;
 int bfd_fatal (int ) ;
 int bfd_get_filename (int *) ;
 char const bfd_get_symbol_leading_char (int *) ;
 TYPE_1__* bfd_make_empty_symbol (int *) ;
 TYPE_1__* bfd_minisymbol_to_symbol (int *,int ,int *,TYPE_1__*) ;
 int def_exports (char*,char*,int,int ,int ,int,int ) ;
 char* strchr (char const*,char) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
scan_filtered_symbols (bfd *abfd, void *minisyms, long symcount,
         unsigned int size)
{
  asymbol *store;
  bfd_byte *from, *fromend;

  store = bfd_make_empty_symbol (abfd);
  if (store == ((void*)0))
    bfd_fatal (bfd_get_filename (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  for (; from < fromend; from += size)
    {
      asymbol *sym;
      const char *symbol_name;

      sym = bfd_minisymbol_to_symbol (abfd, FALSE, from, store);
      if (sym == ((void*)0))
 bfd_fatal (bfd_get_filename (abfd));

      symbol_name = bfd_asymbol_name (sym);
      if (bfd_get_symbol_leading_char (abfd) == symbol_name[0])
 ++symbol_name;

      def_exports (xstrdup (symbol_name) , 0, -1, 0, 0,
     ! (sym->flags & BSF_FUNCTION), 0);

      if (add_stdcall_alias && strchr (symbol_name, '@'))
        {
   int lead_at = (*symbol_name == '@');
   char *exported_name = xstrdup (symbol_name + lead_at);
   char *atsym = strchr (exported_name, '@');
   *atsym = '\0';

   def_exports (exported_name, xstrdup (symbol_name), -1, 0, 0, 0, 0);
 }
    }
}
