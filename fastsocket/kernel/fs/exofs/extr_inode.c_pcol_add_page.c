
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_collect {unsigned int length; int nr_pages; int bio; int req_q; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int bio_add_pc_page (int ,int ,struct page*,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pcol_add_page(struct page_collect *pcol, struct page *page,
    unsigned len)
{
 int added_len = bio_add_pc_page(pcol->req_q, pcol->bio, page, len, 0);
 if (unlikely(len != added_len))
  return -ENOMEM;

 ++pcol->nr_pages;
 pcol->length += len;
 return 0;
}
