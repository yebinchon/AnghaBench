
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cie {int hash; } ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
cie_hash (const void *e)
{
  const struct cie *c = e;
  return c->hash;
}
