
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;
struct page {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 int ____pagevec_lru_add (struct pagevec*,int) ;
 struct pagevec* get_cpu_var (int ) ;
 int lru_add_pvecs ;
 int page_cache_get (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int put_cpu_var (int ) ;

void __lru_cache_add(struct page *page, enum lru_list lru)
{
 struct pagevec *pvec = &get_cpu_var(lru_add_pvecs)[lru];

 page_cache_get(page);
 if (!pagevec_add(pvec, page))
  ____pagevec_lru_add(pvec, lru);
 put_cpu_var(lru_add_pvecs);
}
