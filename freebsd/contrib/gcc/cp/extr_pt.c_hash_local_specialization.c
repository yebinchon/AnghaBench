
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int TREE_VALUE (int ) ;
 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
hash_local_specialization (const void* p1)
{
  return htab_hash_pointer (TREE_VALUE ((tree) p1));
}
