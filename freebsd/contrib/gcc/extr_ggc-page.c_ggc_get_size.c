
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int order; } ;
typedef TYPE_1__ page_entry ;


 size_t OBJECT_SIZE (int ) ;
 TYPE_1__* lookup_page_table_entry (void const*) ;

size_t
ggc_get_size (const void *p)
{
  page_entry *pe = lookup_page_table_entry (p);
  return OBJECT_SIZE (pe->order);
}
