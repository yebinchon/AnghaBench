
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_symbol {char* name; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int bfd ;
struct TYPE_3__ {int address; struct bfd_symbol** sym_ptr_ptr; } ;
typedef TYPE_1__ arelent ;


 int BSF_GLOBAL ;
 int FALSE ;
 int TRUE ;
 int * bfd_asymbol_bfd (struct bfd_symbol*) ;
 int bfd_coff_link_add_one_symbol (int *,int *,char*,int ,int ,int ,int *,int ,int ,struct bfd_link_hash_entry**) ;
 int current_sec ;
 int free (char*) ;
 int link_info ;
 int sprintf (char*,char*,int ,char*) ;
 int strlen (char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
make_import_fixup_mark (arelent *rel)
{

  static int counter;
  static char *fixup_name = ((void*)0);
  static size_t buffer_len = 0;

  struct bfd_symbol *sym = *rel->sym_ptr_ptr;

  bfd *abfd = bfd_asymbol_bfd (sym);
  struct bfd_link_hash_entry *bh;

  if (!fixup_name)
    {
      fixup_name = xmalloc (384);
      buffer_len = 384;
    }

  if (strlen (sym->name) + 25 > buffer_len)



    {
      free (fixup_name);


      buffer_len = ((strlen (sym->name) + 25) + 127) & ~127;
      fixup_name = xmalloc (buffer_len);
    }

  sprintf (fixup_name, "__fu%d_%s", counter++, sym->name);

  bh = ((void*)0);
  bfd_coff_link_add_one_symbol (&link_info, abfd, fixup_name, BSF_GLOBAL,
    current_sec,
    rel->address, ((void*)0), TRUE, FALSE, &bh);

  return fixup_name;
}
