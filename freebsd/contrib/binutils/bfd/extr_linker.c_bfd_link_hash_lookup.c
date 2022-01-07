
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_link_hash_table {int table; } ;
struct TYPE_4__ {struct bfd_link_hash_entry* link; } ;
struct TYPE_3__ {TYPE_2__ i; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_1__ u; } ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ bfd_hash_lookup (int *,char const*,scalar_t__,scalar_t__) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;

struct bfd_link_hash_entry *
bfd_link_hash_lookup (struct bfd_link_hash_table *table,
        const char *string,
        bfd_boolean create,
        bfd_boolean copy,
        bfd_boolean follow)
{
  struct bfd_link_hash_entry *ret;

  ret = ((struct bfd_link_hash_entry *)
  bfd_hash_lookup (&table->table, string, create, copy));

  if (follow && ret != ((void*)0))
    {
      while (ret->type == bfd_link_hash_indirect
      || ret->type == bfd_link_hash_warning)
 ret = ret->u.i.link;
    }

  return ret;
}
