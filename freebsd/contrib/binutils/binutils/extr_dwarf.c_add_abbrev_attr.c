
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long attribute; unsigned long form; struct TYPE_4__* next; } ;
typedef TYPE_1__ abbrev_attr ;
struct TYPE_5__ {TYPE_1__* last_attr; TYPE_1__* first_attr; } ;


 TYPE_3__* last_abbrev ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static void
add_abbrev_attr (unsigned long attribute, unsigned long form)
{
  abbrev_attr *attr;

  attr = malloc (sizeof (*attr));

  if (attr == ((void*)0))

    return;

  attr->attribute = attribute;
  attr->form = form;
  attr->next = ((void*)0);

  if (last_abbrev->first_attr == ((void*)0))
    last_abbrev->first_attr = attr;
  else
    last_abbrev->last_attr->next = attr;

  last_abbrev->last_attr = attr;
}
