
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_block {int const* sect; } ;
typedef int section ;



__attribute__((used)) static int
object_block_entry_eq (const void *p1, const void *p2)
{
  const struct object_block *old = p1;
  const section *new = p2;

  return old->sect == new;
}
