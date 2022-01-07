
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_hash_entry {int dummy; } ;
struct cref_hash_entry {struct bfd_hash_entry root; int * refs; int * demangled; } ;
struct bfd_hash_table {int dummy; } ;


 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 scalar_t__ bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 int cref_symcount ;

__attribute__((used)) static struct bfd_hash_entry *
cref_hash_newfunc (struct bfd_hash_entry *entry,
     struct bfd_hash_table *table,
     const char *string)
{
  struct cref_hash_entry *ret = (struct cref_hash_entry *) entry;



  if (ret == ((void*)0))
    ret = ((struct cref_hash_entry *)
    bfd_hash_allocate (table, sizeof (struct cref_hash_entry)));
  if (ret == ((void*)0))
    return ((void*)0);


  ret = ((struct cref_hash_entry *)
  bfd_hash_newfunc ((struct bfd_hash_entry *) ret, table, string));
  if (ret != ((void*)0))
    {

      ret->demangled = ((void*)0);
      ret->refs = ((void*)0);



      ++cref_symcount;
    }

  return &ret->root;
}
