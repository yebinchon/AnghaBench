
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef int sector_t ;


 int ENOSPC ;
 int PAGE_SIZE ;
 int WARN_ON_ONCE (int) ;
 int __GFP_HIGH ;
 int __GFP_WAIT ;
 scalar_t__ __get_free_page (int) ;
 int bio_write_page (int ,void*,struct bio**) ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static int write_page(void *buf, sector_t offset, struct bio **bio_chain)
{
 void *src;

 if (!offset)
  return -ENOSPC;

 if (bio_chain) {
  src = (void *)__get_free_page(__GFP_WAIT | __GFP_HIGH);
  if (src) {
   memcpy(src, buf, PAGE_SIZE);
  } else {
   WARN_ON_ONCE(1);
   bio_chain = ((void*)0);
   src = buf;
  }
 } else {
  src = buf;
 }
 return bio_write_page(offset, src, bio_chain);
}
