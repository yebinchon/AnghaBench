
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef unsigned int hashval_t ;


 int IDENTIFIER_HASH_VALUE (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_PURPOSE (scalar_t__) ;
 unsigned int iterative_hash_object (int ,unsigned int) ;

unsigned int
attribute_hash_list (tree list, hashval_t hashcode)
{
  tree tail;

  for (tail = list; tail; tail = TREE_CHAIN (tail))

    hashcode = iterative_hash_object
      (IDENTIFIER_HASH_VALUE (TREE_PURPOSE (tail)), hashcode);
  return hashcode;
}
