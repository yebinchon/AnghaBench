
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int DIE_FIND_CB_CHILD ;
 int DIE_FIND_CB_END ;
 int DIE_FIND_CB_SIBLING ;
 int dwarf_child (int *,int *) ;
 scalar_t__ dwarf_siblingof (int *,int *) ;
 int memcpy (int *,int *,int) ;

Dwarf_Die *die_find_child(Dwarf_Die *rt_die,
     int (*callback)(Dwarf_Die *, void *),
     void *data, Dwarf_Die *die_mem)
{
 Dwarf_Die child_die;
 int ret;

 ret = dwarf_child(rt_die, die_mem);
 if (ret != 0)
  return ((void*)0);

 do {
  ret = callback(die_mem, data);
  if (ret == DIE_FIND_CB_END)
   return die_mem;

  if ((ret & DIE_FIND_CB_CHILD) &&
      die_find_child(die_mem, callback, data, &child_die)) {
   memcpy(die_mem, &child_die, sizeof(Dwarf_Die));
   return die_mem;
  }
 } while ((ret & DIE_FIND_CB_SIBLING) &&
   dwarf_siblingof(die_mem, die_mem) == 0);

 return ((void*)0);
}
