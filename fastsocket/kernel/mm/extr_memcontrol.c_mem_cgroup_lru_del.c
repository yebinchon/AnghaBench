
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int mem_cgroup_lru_del_list (struct page*,int ) ;
 int page_lru (struct page*) ;

void mem_cgroup_lru_del(struct page *page)
{
 mem_cgroup_lru_del_list(page, page_lru(page));
}
