
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int * next; int actual; int def; int name; } ;
typedef TYPE_1__ formal_entry ;


 int FORMAL_OPTIONAL ;
 int sb_new (int *) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static formal_entry *
new_formal (void)
{
  formal_entry *formal;

  formal = xmalloc (sizeof (formal_entry));

  sb_new (&formal->name);
  sb_new (&formal->def);
  sb_new (&formal->actual);
  formal->next = ((void*)0);
  formal->type = FORMAL_OPTIONAL;
  return formal;
}
