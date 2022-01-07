
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {int async_size; int size; int start; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;


 int __do_page_cache_readahead (struct address_space*,struct file*,int ,int ,int ) ;

unsigned long ra_submit(struct file_ra_state *ra,
         struct address_space *mapping, struct file *filp)
{
 int actual;

 actual = __do_page_cache_readahead(mapping, filp,
     ra->start, ra->size, ra->async_size);

 return actual;
}
