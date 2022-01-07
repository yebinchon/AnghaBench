
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int conversion_kind ;
struct TYPE_3__ {int kind; } ;
typedef TYPE_1__ conversion ;


 scalar_t__ conversion_obstack_alloc (int) ;

__attribute__((used)) static conversion *
alloc_conversion (conversion_kind kind)
{
  conversion *c;
  c = (conversion *) conversion_obstack_alloc (sizeof (conversion));
  c->kind = kind;
  return c;
}
