
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int kunmap (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static inline void remove_metapage(struct page *page, struct metapage *mp)
{
 set_page_private(page, 0);
 ClearPagePrivate(page);
 kunmap(page);
}
