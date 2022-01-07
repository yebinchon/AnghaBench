
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocks_per_segment; unsigned long ns_nrsvsegs; int ns_ndirtyblks; struct inode* ns_sufile; } ;
struct inode {int dummy; } ;


 int atomic_read (int *) ;
 scalar_t__ likely (int) ;
 int nilfs_sufile_get_ncleansegs (struct inode*,unsigned long*) ;

int nilfs_near_disk_full(struct the_nilfs *nilfs)
{
 struct inode *sufile = nilfs->ns_sufile;
 unsigned long ncleansegs, nincsegs;
 int ret;

 ret = nilfs_sufile_get_ncleansegs(sufile, &ncleansegs);
 if (likely(!ret)) {
  nincsegs = atomic_read(&nilfs->ns_ndirtyblks) /
   nilfs->ns_blocks_per_segment + 1;
  if (ncleansegs <= nilfs->ns_nrsvsegs + nincsegs)
   ret++;
 }
 return ret;
}
