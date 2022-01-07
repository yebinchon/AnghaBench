
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct def_blocks_d {scalar_t__ var; } ;



__attribute__((used)) static int
def_blocks_eq (const void *p1, const void *p2)
{
  return ((const struct def_blocks_d *)p1)->var
  == ((const struct def_blocks_d *)p2)->var;
}
