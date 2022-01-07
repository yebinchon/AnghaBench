
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ is_vmalloc_addr (struct page**) ;
 int kfree (struct page**) ;
 int vfree (struct page**) ;

__attribute__((used)) static void relay_free_page_array(struct page **array)
{
 if (is_vmalloc_addr(array))
  vfree(array);
 else
  kfree(array);
}
