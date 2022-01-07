
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __line_walk_param {scalar_t__ retval; int data; int callback; } ;
typedef int Dwarf_Die ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 scalar_t__ __die_walk_funclines (int *,int,int ,int ) ;

__attribute__((used)) static int __die_walk_culines_cb(Dwarf_Die *sp_die, void *data)
{
 struct __line_walk_param *lw = data;

 lw->retval = __die_walk_funclines(sp_die, 1, lw->callback, lw->data);
 if (lw->retval != 0)
  return DWARF_CB_ABORT;

 return DWARF_CB_OK;
}
