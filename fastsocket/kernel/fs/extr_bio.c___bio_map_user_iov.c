
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_iovec {unsigned long iov_len; scalar_t__ iov_base; } ;
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int bi_rw; int bi_flags; struct block_device* bi_bdev; } ;
typedef int gfp_t ;


 int BIO_RW ;
 int BIO_USER_MAPPED ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct bio* ERR_PTR (int) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned int bio_add_pc_page (struct request_queue*,struct bio*,struct page*,unsigned int,int) ;
 struct bio* bio_kmalloc (int ,int) ;
 int bio_put (struct bio*) ;
 int get_user_pages_fast (unsigned long,int const,int,struct page**) ;
 struct page** kcalloc (int,int,int ) ;
 int kfree (struct page**) ;
 int page_cache_release (struct page*) ;
 unsigned long queue_dma_alignment (struct request_queue*) ;

__attribute__((used)) static struct bio *__bio_map_user_iov(struct request_queue *q,
          struct block_device *bdev,
          struct sg_iovec *iov, int iov_count,
          int write_to_vm, gfp_t gfp_mask)
{
 int i, j;
 int nr_pages = 0;
 struct page **pages;
 struct bio *bio;
 int cur_page = 0;
 int ret, offset;

 for (i = 0; i < iov_count; i++) {
  unsigned long uaddr = (unsigned long)iov[i].iov_base;
  unsigned long len = iov[i].iov_len;
  unsigned long end = (uaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
  unsigned long start = uaddr >> PAGE_SHIFT;




  if (end < start)
   return ERR_PTR(-EINVAL);

  nr_pages += end - start;



  if (uaddr & queue_dma_alignment(q))
   return ERR_PTR(-EINVAL);
 }

 if (!nr_pages)
  return ERR_PTR(-EINVAL);

 bio = bio_kmalloc(gfp_mask, nr_pages);
 if (!bio)
  return ERR_PTR(-ENOMEM);

 ret = -ENOMEM;
 pages = kcalloc(nr_pages, sizeof(struct page *), gfp_mask);
 if (!pages)
  goto out;

 for (i = 0; i < iov_count; i++) {
  unsigned long uaddr = (unsigned long)iov[i].iov_base;
  unsigned long len = iov[i].iov_len;
  unsigned long end = (uaddr + len + PAGE_SIZE - 1) >> PAGE_SHIFT;
  unsigned long start = uaddr >> PAGE_SHIFT;
  const int local_nr_pages = end - start;
  const int page_limit = cur_page + local_nr_pages;

  ret = get_user_pages_fast(uaddr, local_nr_pages,
    write_to_vm, &pages[cur_page]);
  if (ret < local_nr_pages) {
   ret = -EFAULT;
   goto out_unmap;
  }

  offset = uaddr & ~PAGE_MASK;
  for (j = cur_page; j < page_limit; j++) {
   unsigned int bytes = PAGE_SIZE - offset;

   if (len <= 0)
    break;

   if (bytes > len)
    bytes = len;




   if (bio_add_pc_page(q, bio, pages[j], bytes, offset) <
         bytes)
    break;

   len -= bytes;
   offset = 0;
  }

  cur_page = j;



  while (j < page_limit)
   page_cache_release(pages[j++]);
 }

 kfree(pages);




 if (!write_to_vm)
  bio->bi_rw |= (1 << BIO_RW);

 bio->bi_bdev = bdev;
 bio->bi_flags |= (1 << BIO_USER_MAPPED);
 return bio;

 out_unmap:
 for (i = 0; i < nr_pages; i++) {
  if(!pages[i])
   break;
  page_cache_release(pages[i]);
 }
 out:
 kfree(pages);
 bio_put(bio);
 return ERR_PTR(ret);
}
