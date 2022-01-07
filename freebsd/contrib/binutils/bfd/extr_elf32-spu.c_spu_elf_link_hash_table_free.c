
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_link_hash_table {int stub_hash_table; } ;
struct bfd_link_hash_table {int dummy; } ;


 int _bfd_generic_link_hash_table_free (struct bfd_link_hash_table*) ;
 int bfd_hash_table_free (int *) ;

__attribute__((used)) static void
spu_elf_link_hash_table_free (struct bfd_link_hash_table *hash)
{
  struct spu_link_hash_table *ret = (struct spu_link_hash_table *) hash;

  bfd_hash_table_free (&ret->stub_hash_table);
  _bfd_generic_link_hash_table_free (hash);
}
