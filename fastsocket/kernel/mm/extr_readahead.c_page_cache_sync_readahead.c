
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {int ra_pages; } ;
struct file {int f_mode; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int FMODE_RANDOM ;
 int force_page_cache_readahead (struct address_space*,struct file*,int ,unsigned long) ;
 int ondemand_readahead (struct address_space*,struct file_ra_state*,struct file*,int,int ,unsigned long) ;

void page_cache_sync_readahead(struct address_space *mapping,
          struct file_ra_state *ra, struct file *filp,
          pgoff_t offset, unsigned long req_size)
{

 if (!ra->ra_pages)
  return;


 if (filp && (filp->f_mode & FMODE_RANDOM)) {
  force_page_cache_readahead(mapping, filp, offset, req_size);
  return;
 }


 ondemand_readahead(mapping, ra, filp, 0, offset, req_size);
}
