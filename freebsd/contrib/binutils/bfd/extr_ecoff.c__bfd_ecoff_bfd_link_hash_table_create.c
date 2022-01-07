
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_hash_table {int dummy; } ;
struct ecoff_link_hash_table {struct bfd_link_hash_table root; } ;
struct ecoff_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_link_hash_table_init (struct bfd_link_hash_table*,int *,int ,int) ;
 struct ecoff_link_hash_table* bfd_malloc (int) ;
 int ecoff_link_hash_newfunc ;
 int free (struct ecoff_link_hash_table*) ;

struct bfd_link_hash_table *
_bfd_ecoff_bfd_link_hash_table_create (bfd *abfd)
{
  struct ecoff_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct ecoff_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);
  if (!_bfd_link_hash_table_init (&ret->root, abfd,
      ecoff_link_hash_newfunc,
      sizeof (struct ecoff_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }
  return &ret->root;
}
