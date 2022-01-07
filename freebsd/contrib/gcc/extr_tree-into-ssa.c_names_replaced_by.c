
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct repl_map_d {int * set; int name; } ;
typedef int * bitmap ;


 int NO_INSERT ;
 void** htab_find_slot (int ,void*,int ) ;
 int repl_tbl ;

__attribute__((used)) static inline bitmap
names_replaced_by (tree new)
{
  struct repl_map_d m;
  void **slot;

  m.name = new;
  slot = htab_find_slot (repl_tbl, (void *) &m, NO_INSERT);


  if (slot == ((void*)0) || *slot == ((void*)0))
    return ((void*)0);

  return ((struct repl_map_d *) *slot)->set;
}
