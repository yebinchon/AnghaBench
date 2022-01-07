
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {int start; int size; int async_size; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int count_history_pages (struct address_space*,struct file_ra_state*,int,unsigned long) ;
 int get_init_ra_size (int,unsigned long) ;

__attribute__((used)) static int try_context_readahead(struct address_space *mapping,
     struct file_ra_state *ra,
     pgoff_t offset,
     unsigned long req_size,
     unsigned long max)
{
 pgoff_t size;

 size = count_history_pages(mapping, ra, offset, max);





 if (!size)
  return 0;





 if (size >= offset)
  size *= 2;

 ra->start = offset;
 ra->size = get_init_ra_size(size + req_size, max);
 ra->async_size = ra->size;

 return 1;
}
