
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {int is_function_key; int curses_key; int dialog_key; } ;
struct TYPE_4__ {char* name; scalar_t__ buttons; TYPE_2__* binding; int * win; struct TYPE_4__* link; } ;
typedef TYPE_1__ LIST_BINDINGS ;
typedef TYPE_2__ DLG_KEYS_BINDING ;


 int KEY_MAX ;
 int KEY_MOUSE ;
 int KEY_RESIZE ;
 char const* WILDNAME ;
 TYPE_1__* all_bindings ;
 scalar_t__ dlg_toupper (int) ;
 int strcmp (char*,char const*) ;

int
dlg_lookup_key(WINDOW *win, int curses_key, int *fkey)
{
    LIST_BINDINGS *p;
    DLG_KEYS_BINDING *q;
    if (*fkey == 0 || curses_key < KEY_MAX) {
 const char *name = WILDNAME;
 if (win != 0) {
     for (p = all_bindings; p != 0; p = p->link) {
  if (p->win == win) {
      name = p->name;
      break;
  }
     }
 }
 for (p = all_bindings; p != 0; p = p->link) {
     if (p->win == win ||
  (p->win == 0 &&
   (!strcmp(p->name, name) || !strcmp(p->name, WILDNAME)))) {
  int function_key = (*fkey != 0);
  for (q = p->binding; q->is_function_key >= 0; ++q) {
      if (p->buttons
   && !function_key
   && q->curses_key == (int) dlg_toupper(curses_key)) {
   *fkey = 0;
   return q->dialog_key;
      }
      if (q->curses_key == curses_key
   && q->is_function_key == function_key) {
   *fkey = q->dialog_key;
   return *fkey;
      }
  }
     }
 }
    }
    return curses_key;
}
