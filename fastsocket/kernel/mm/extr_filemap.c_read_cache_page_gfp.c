
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int pgoff_t ;
typedef int gfp_t ;
typedef int filler_t ;
struct TYPE_2__ {scalar_t__ readpage; } ;


 int do_read_cache_page (struct address_space*,int ,int *,int *,int ) ;
 struct page* wait_on_page_read (int ) ;

struct page *read_cache_page_gfp(struct address_space *mapping,
    pgoff_t index,
    gfp_t gfp)
{
 filler_t *filler = (filler_t *)mapping->a_ops->readpage;

 return wait_on_page_read(do_read_cache_page(mapping, index, filler, ((void*)0), gfp));
}
