
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hash_table; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ cpp_hashnode ;


 TYPE_2__* CPP_HASHNODE (int ) ;
 int HT_NO_INSERT ;
 scalar_t__ NT_MACRO ;
 int ht_lookup (int ,unsigned char const*,int,int ) ;

int
cpp_defined (cpp_reader *pfile, const unsigned char *str, int len)
{
  cpp_hashnode *node;

  node = CPP_HASHNODE (ht_lookup (pfile->hash_table, str, len, HT_NO_INSERT));


  return node && node->type == NT_MACRO;
}
