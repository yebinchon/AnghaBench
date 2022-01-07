
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_descriptor_tree {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
const_desc_hash (const void *ptr)
{
  return ((struct constant_descriptor_tree *)ptr)->hash;
}
