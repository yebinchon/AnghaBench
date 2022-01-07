
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;


 int BDI_RECLAIMABLE ;
 int BDI_WRITEBACK ;
 int NR_FILE_DIRTY ;
 int NR_UNSTABLE_NFS ;
 int NR_WRITEBACK ;
 int NR_WRITEBACK_TEMP ;
 scalar_t__ bdi_stat (struct backing_dev_info*,int ) ;
 unsigned long global_page_state (int ) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static void clip_bdi_dirty_limit(struct backing_dev_info *bdi,
  unsigned long dirty, unsigned long *pbdi_dirty)
{
 unsigned long avail_dirty;

 avail_dirty = global_page_state(NR_FILE_DIRTY) +
   global_page_state(NR_WRITEBACK) +
   global_page_state(NR_UNSTABLE_NFS) +
   global_page_state(NR_WRITEBACK_TEMP);

 if (avail_dirty < dirty)
  avail_dirty = dirty - avail_dirty;
 else
  avail_dirty = 0;

 avail_dirty += bdi_stat(bdi, BDI_RECLAIMABLE) +
  bdi_stat(bdi, BDI_WRITEBACK);

 *pbdi_dirty = min(*pbdi_dirty, avail_dirty);
}
