
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
memref_hash (const void *obj)
{
  const struct mem_ref *mem = obj;

  return mem->hash;
}
