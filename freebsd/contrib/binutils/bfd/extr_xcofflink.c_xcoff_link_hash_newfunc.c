
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int toc_indx; } ;
struct xcoff_link_hash_entry {int indx; int ldindx; int smclas; scalar_t__ flags; int * ldsym; int * descriptor; TYPE_1__ u; int * toc_section; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 int XMC_UA ;
 scalar_t__ _bfd_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 struct xcoff_link_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;

__attribute__((used)) static struct bfd_hash_entry *
xcoff_link_hash_newfunc (struct bfd_hash_entry *entry,
    struct bfd_hash_table *table,
    const char *string)
{
  struct xcoff_link_hash_entry *ret = (struct xcoff_link_hash_entry *) entry;



  if (ret == ((void*)0))
    ret = bfd_hash_allocate (table, sizeof (* ret));
  if (ret == ((void*)0))
    return ((void*)0);


  ret = ((struct xcoff_link_hash_entry *)
  _bfd_link_hash_newfunc ((struct bfd_hash_entry *) ret,
     table, string));
  if (ret != ((void*)0))
    {

      ret->indx = -1;
      ret->toc_section = ((void*)0);
      ret->u.toc_indx = -1;
      ret->descriptor = ((void*)0);
      ret->ldsym = ((void*)0);
      ret->ldindx = -1;
      ret->flags = 0;
      ret->smclas = XMC_UA;
    }

  return (struct bfd_hash_entry *) ret;
}
