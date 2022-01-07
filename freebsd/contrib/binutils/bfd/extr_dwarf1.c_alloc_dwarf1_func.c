
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf1_unit {struct dwarf1_func* func_list; } ;
struct dwarf1_func {struct dwarf1_func* prev; } ;
struct dwarf1_debug {int abfd; } ;
typedef int bfd_size_type ;


 struct dwarf1_func* bfd_zalloc (int ,int) ;

__attribute__((used)) static struct dwarf1_func *
alloc_dwarf1_func (struct dwarf1_debug* stash, struct dwarf1_unit* aUnit)
{
  bfd_size_type amt = sizeof (struct dwarf1_func);

  struct dwarf1_func* x = bfd_zalloc (stash->abfd, amt);
  x->prev = aUnit->func_list;
  aUnit->func_list = x;

  return x;
}
