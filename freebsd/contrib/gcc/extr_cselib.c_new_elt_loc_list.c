
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elt_loc_list {int in_libcall; int setting_insn; int loc; struct elt_loc_list* next; } ;
typedef int rtx ;


 int cselib_current_insn ;
 int cselib_current_insn_in_libcall ;
 int elt_loc_list_pool ;
 struct elt_loc_list* pool_alloc (int ) ;

__attribute__((used)) static inline struct elt_loc_list *
new_elt_loc_list (struct elt_loc_list *next, rtx loc)
{
  struct elt_loc_list *el;
  el = pool_alloc (elt_loc_list_pool);
  el->next = next;
  el->loc = loc;
  el->setting_insn = cselib_current_insn;
  el->in_libcall = cselib_current_insn_in_libcall;
  return el;
}
