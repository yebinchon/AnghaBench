
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
struct generic_link_hash_table {TYPE_1__ root; } ;
struct bfd_link_hash_table {int dummy; } ;


 int bfd_hash_table_free (int *) ;
 int free (struct generic_link_hash_table*) ;

void
_bfd_generic_link_hash_table_free (struct bfd_link_hash_table *hash)
{
  struct generic_link_hash_table *ret
    = (struct generic_link_hash_table *) hash;

  bfd_hash_table_free (&ret->root.table);
  free (ret);
}
