
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct page** rq_pages; } ;
struct page {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 unsigned int RPCSVC_MAXPAGES ;
 struct page* alloc_page (int ) ;
 scalar_t__ svc_is_backchannel (struct svc_rqst*) ;

__attribute__((used)) static int
svc_init_buffer(struct svc_rqst *rqstp, unsigned int size)
{
 unsigned int pages, arghi;


 if (svc_is_backchannel(rqstp))
  return 1;

 pages = size / PAGE_SIZE + 1;


 arghi = 0;
 BUG_ON(pages > RPCSVC_MAXPAGES);
 while (pages) {
  struct page *p = alloc_page(GFP_KERNEL);
  if (!p)
   break;
  rqstp->rq_pages[arghi++] = p;
  pages--;
 }
 return pages == 0;
}
