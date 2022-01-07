
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int unichar ;
typedef void* rc_uint_type ;
struct TYPE_4__ {struct TYPE_4__* popup; void* help; int text; void* id; void* state; void* type; int * next; } ;
typedef TYPE_1__ rc_menuitem ;


 scalar_t__ res_alloc (int) ;
 int unichar_dup (int const*) ;

rc_menuitem *
define_menuitem (const unichar *text, rc_uint_type menuid, rc_uint_type type,
   rc_uint_type state, rc_uint_type help,
   rc_menuitem *menuitems)
{
  rc_menuitem *mi;

  mi = (rc_menuitem *) res_alloc (sizeof (rc_menuitem));
  mi->next = ((void*)0);
  mi->type = type;
  mi->state = state;
  mi->id = menuid;
  mi->text = unichar_dup (text);
  mi->help = help;
  mi->popup = menuitems;
  return mi;
}
