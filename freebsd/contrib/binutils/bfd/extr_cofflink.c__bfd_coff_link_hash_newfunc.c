
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_link_hash_entry {int indx; int * aux; int * auxbfd; scalar_t__ numaux; int class; int type; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 int C_NULL ;
 int T_NULL ;
 scalar_t__ _bfd_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;

struct bfd_hash_entry *
_bfd_coff_link_hash_newfunc (struct bfd_hash_entry *entry,
        struct bfd_hash_table *table,
        const char *string)
{
  struct coff_link_hash_entry *ret = (struct coff_link_hash_entry *) entry;



  if (ret == (struct coff_link_hash_entry *) ((void*)0))
    ret = ((struct coff_link_hash_entry *)
    bfd_hash_allocate (table, sizeof (struct coff_link_hash_entry)));
  if (ret == (struct coff_link_hash_entry *) ((void*)0))
    return (struct bfd_hash_entry *) ret;


  ret = ((struct coff_link_hash_entry *)
  _bfd_link_hash_newfunc ((struct bfd_hash_entry *) ret,
     table, string));
  if (ret != (struct coff_link_hash_entry *) ((void*)0))
    {

      ret->indx = -1;
      ret->type = T_NULL;
      ret->class = C_NULL;
      ret->numaux = 0;
      ret->auxbfd = ((void*)0);
      ret->aux = ((void*)0);
    }

  return (struct bfd_hash_entry *) ret;
}
