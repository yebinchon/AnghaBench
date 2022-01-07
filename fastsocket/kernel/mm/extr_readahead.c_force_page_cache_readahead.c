
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef unsigned long pgoff_t ;
struct TYPE_2__ {int readpages; int readpage; } ;


 int EINVAL ;
 int PAGE_CACHE_SIZE ;
 int __do_page_cache_readahead (struct address_space*,struct file*,unsigned long,unsigned long,int ) ;
 unsigned long max_sane_readahead (unsigned long) ;
 scalar_t__ unlikely (int) ;

int force_page_cache_readahead(struct address_space *mapping, struct file *filp,
  pgoff_t offset, unsigned long nr_to_read)
{
 int ret = 0;

 if (unlikely(!mapping->a_ops->readpage && !mapping->a_ops->readpages))
  return -EINVAL;

 nr_to_read = max_sane_readahead(nr_to_read);
 while (nr_to_read) {
  int err;

  unsigned long this_chunk = (2 * 1024 * 1024) / PAGE_CACHE_SIZE;

  if (this_chunk > nr_to_read)
   this_chunk = nr_to_read;
  err = __do_page_cache_readahead(mapping, filp,
      offset, this_chunk, 0);
  if (err < 0) {
   ret = err;
   break;
  }
  ret += err;
  offset += this_chunk;
  nr_to_read -= this_chunk;
 }
 return ret;
}
