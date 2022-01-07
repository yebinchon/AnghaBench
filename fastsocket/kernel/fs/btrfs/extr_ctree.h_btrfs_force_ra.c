
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int page_cache_sync_readahead (struct address_space*,struct file_ra_state*,struct file*,int ,unsigned long) ;

__attribute__((used)) static inline void btrfs_force_ra(struct address_space *mapping,
      struct file_ra_state *ra, struct file *file,
      pgoff_t offset, unsigned long req_size)
{
 page_cache_sync_readahead(mapping, ra, file, offset, req_size);
}
