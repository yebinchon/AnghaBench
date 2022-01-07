
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct mpage_data {int use_writepage; int * bio; int get_block; int last_block_in_bio; } ;
struct address_space {int dummy; } ;
typedef int get_block_t ;


 int WRITE ;
 int __mpage_writepage ;
 int generic_writepages (struct address_space*,struct writeback_control*) ;
 int mpage_bio_submit (int ,int *) ;
 int write_cache_pages (struct address_space*,struct writeback_control*,int ,struct mpage_data*) ;

int
mpage_writepages(struct address_space *mapping,
  struct writeback_control *wbc, get_block_t get_block)
{
 int ret;

 if (!get_block)
  ret = generic_writepages(mapping, wbc);
 else {
  struct mpage_data mpd = {
   .bio = ((void*)0),
   .last_block_in_bio = 0,
   .get_block = get_block,
   .use_writepage = 1,
  };

  ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
  if (mpd.bio)
   mpage_bio_submit(WRITE, mpd.bio);
 }
 return ret;
}
