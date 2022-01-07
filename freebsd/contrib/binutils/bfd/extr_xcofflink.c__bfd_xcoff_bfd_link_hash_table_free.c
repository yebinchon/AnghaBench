
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
struct xcoff_link_hash_table {TYPE_1__ root; int debug_strtab; } ;
struct bfd_link_hash_table {int dummy; } ;


 int _bfd_stringtab_free (int ) ;
 int bfd_hash_table_free (int *) ;
 int free (struct xcoff_link_hash_table*) ;

void
_bfd_xcoff_bfd_link_hash_table_free (struct bfd_link_hash_table *hash)
{
  struct xcoff_link_hash_table *ret = (struct xcoff_link_hash_table *) hash;

  _bfd_stringtab_free (ret->debug_strtab);
  bfd_hash_table_free (&ret->root.table);
  free (ret);
}
