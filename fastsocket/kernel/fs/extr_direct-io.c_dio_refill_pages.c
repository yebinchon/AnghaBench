
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dio_submit {int curr_user_address; int tail; scalar_t__ head; scalar_t__ curr_page; scalar_t__ blocks_available; scalar_t__ total_pages; } ;
struct dio {int rw; int page_errors; struct page** pages; } ;


 int DIO_PAGES ;
 int PAGE_SIZE ;
 int READ ;
 int WRITE ;
 struct page* ZERO_PAGE (int ) ;
 int get_user_pages_fast (int,int,int,struct page**) ;
 int min (scalar_t__,int ) ;
 int page_cache_get (struct page*) ;

__attribute__((used)) static inline int dio_refill_pages(struct dio *dio, struct dio_submit *sdio)
{
 int ret;
 int nr_pages;

 nr_pages = min(sdio->total_pages - sdio->curr_page, DIO_PAGES);
 ret = get_user_pages_fast(
  sdio->curr_user_address,
  nr_pages,
  dio->rw == READ,
  &dio->pages[0]);

 if (ret < 0 && sdio->blocks_available && (dio->rw & WRITE)) {
  struct page *page = ZERO_PAGE(0);





  if (dio->page_errors == 0)
   dio->page_errors = ret;
  page_cache_get(page);
  dio->pages[0] = page;
  sdio->head = 0;
  sdio->tail = 1;
  ret = 0;
  goto out;
 }

 if (ret >= 0) {
  sdio->curr_user_address += ret * PAGE_SIZE;
  sdio->curr_page += ret;
  sdio->head = 0;
  sdio->tail = ret;
  ret = 0;
 }
out:
 return ret;
}
