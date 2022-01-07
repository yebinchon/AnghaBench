
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash_table; } ;
typedef TYPE_1__ cpp_reader ;
typedef int cpp_hashnode ;


 int * CPP_HASHNODE (int ) ;
 int HT_ALLOC ;
 int ht_lookup (int ,unsigned char const*,unsigned int,int ) ;

cpp_hashnode *
cpp_lookup (cpp_reader *pfile, const unsigned char *str, unsigned int len)
{

  return CPP_HASHNODE (ht_lookup (pfile->hash_table, str, len, HT_ALLOC));
}
