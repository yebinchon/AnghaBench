
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int DECL_NAME (int ) ;
 int TYPE_CONTEXT (int ) ;
 int TYPE_NAME (int ) ;
 int htab_hash_pointer (int ) ;

__attribute__((used)) static hashval_t
typename_hash (const void* k)
{
  hashval_t hash;
  tree t = (tree) k;

  hash = (htab_hash_pointer (TYPE_CONTEXT (t))
   ^ htab_hash_pointer (DECL_NAME (TYPE_NAME (t))));

  return hash;
}
