
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf1_unit {struct dwarf1_unit* prev; } ;
struct dwarf1_debug {struct dwarf1_unit* lastUnit; int abfd; } ;
typedef int bfd_size_type ;


 struct dwarf1_unit* bfd_zalloc (int ,int) ;

__attribute__((used)) static struct dwarf1_unit*
alloc_dwarf1_unit (struct dwarf1_debug* stash)
{
  bfd_size_type amt = sizeof (struct dwarf1_unit);

  struct dwarf1_unit* x = bfd_zalloc (stash->abfd, amt);
  x->prev = stash->lastUnit;
  stash->lastUnit = x;

  return x;
}
