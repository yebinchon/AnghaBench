
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fip; int * ddip; int symbol; int * hash_next; } ;
typedef TYPE_1__ hash_table_entry ;


 int xstrdup (char const*) ;

__attribute__((used)) static hash_table_entry *
add_symbol (hash_table_entry *p, const char *s)
{
  p->hash_next = ((void*)0);
  p->symbol = xstrdup (s);
  p->ddip = ((void*)0);
  p->fip = ((void*)0);
  return p;
}
