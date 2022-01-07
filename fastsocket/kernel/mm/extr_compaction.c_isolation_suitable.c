
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct compact_control {scalar_t__ ignore_skip_hint; } ;


 int get_pageblock_skip (struct page*) ;

__attribute__((used)) static inline bool isolation_suitable(struct compact_control *cc,
     struct page *page)
{
 if (cc->ignore_skip_hint)
  return 1;

 return !get_pageblock_skip(page);
}
