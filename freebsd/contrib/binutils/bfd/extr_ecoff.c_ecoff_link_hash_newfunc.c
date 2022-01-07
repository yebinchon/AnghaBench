
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecoff_link_hash_entry {int indx; int esym; scalar_t__ small; scalar_t__ written; int * abfd; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 scalar_t__ _bfd_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static struct bfd_hash_entry *
ecoff_link_hash_newfunc (struct bfd_hash_entry *entry,
    struct bfd_hash_table *table,
    const char *string)
{
  struct ecoff_link_hash_entry *ret = (struct ecoff_link_hash_entry *) entry;



  if (ret == ((void*)0))
    ret = ((struct ecoff_link_hash_entry *)
    bfd_hash_allocate (table, sizeof (struct ecoff_link_hash_entry)));
  if (ret == ((void*)0))
    return ((void*)0);


  ret = ((struct ecoff_link_hash_entry *)
  _bfd_link_hash_newfunc ((struct bfd_hash_entry *) ret,
     table, string));

  if (ret)
    {

      ret->indx = -1;
      ret->abfd = ((void*)0);
      ret->written = 0;
      ret->small = 0;
    }
  memset ((void *) &ret->esym, 0, sizeof ret->esym);

  return (struct bfd_hash_entry *) ret;
}
