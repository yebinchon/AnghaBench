
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int text; } ;
typedef TYPE_1__ dlist_type ;


 TYPE_1__* d_list ;
 scalar_t__ xmalloc (int) ;
 int xstrdup (char const*) ;

void
def_description (const char *desc)
{
  dlist_type *d = (dlist_type *) xmalloc (sizeof (dlist_type));
  d->text = xstrdup (desc);
  d->next = d_list;
  d_list = d;
}
