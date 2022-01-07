
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_entry {int dummy; } ;


 struct page_entry* lookup_page_table_entry (void const*) ;

__attribute__((used)) static inline struct page_entry *
zone_get_object_page (const void *object)
{
  return lookup_page_table_entry (object);
}
