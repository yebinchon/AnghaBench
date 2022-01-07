
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_hash {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
type_hash_hash (const void *item)
{
  return ((const struct type_hash *) item)->hash;
}
