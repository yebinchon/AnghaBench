
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_stub_hash_entry {int * id_sec; int * h; int * target_section; scalar_t__ target_value; scalar_t__ stub_offset; int * stub_sec; int stub_type; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 struct bfd_hash_entry* bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 int ppc_stub_none ;

__attribute__((used)) static struct bfd_hash_entry *
stub_hash_newfunc (struct bfd_hash_entry *entry,
     struct bfd_hash_table *table,
     const char *string)
{


  if (entry == ((void*)0))
    {
      entry = bfd_hash_allocate (table, sizeof (struct ppc_stub_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = bfd_hash_newfunc (entry, table, string);
  if (entry != ((void*)0))
    {
      struct ppc_stub_hash_entry *eh;


      eh = (struct ppc_stub_hash_entry *) entry;
      eh->stub_type = ppc_stub_none;
      eh->stub_sec = ((void*)0);
      eh->stub_offset = 0;
      eh->target_value = 0;
      eh->target_section = ((void*)0);
      eh->h = ((void*)0);
      eh->id_sec = ((void*)0);
    }

  return entry;
}
