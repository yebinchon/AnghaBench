
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;



__attribute__((used)) static inline void mminit_verify_page_links(struct page *page,
  enum zone_type zone, unsigned long nid, unsigned long pfn)
{
}
