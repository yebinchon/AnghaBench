
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_dsync_end; int sc_dsync_start; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 int LIST_HEAD (int ) ;
 int data_buffers ;
 int nilfs_collect_file_data ;
 size_t nilfs_lookup_dirty_data_buffers (struct inode*,int *,size_t,int ,int ) ;
 int nilfs_segctor_apply_buffers (struct nilfs_sc_info*,struct inode*,int *,int ) ;
 size_t nilfs_segctor_buffer_rest (struct nilfs_sc_info*) ;
 int nilfs_segctor_end_finfo (struct nilfs_sc_info*,struct inode*) ;

__attribute__((used)) static int nilfs_segctor_scan_file_dsync(struct nilfs_sc_info *sci,
      struct inode *inode)
{
 LIST_HEAD(data_buffers);
 size_t n, rest = nilfs_segctor_buffer_rest(sci);
 int err;

 n = nilfs_lookup_dirty_data_buffers(inode, &data_buffers, rest + 1,
         sci->sc_dsync_start,
         sci->sc_dsync_end);

 err = nilfs_segctor_apply_buffers(sci, inode, &data_buffers,
       nilfs_collect_file_data);
 if (!err) {
  nilfs_segctor_end_finfo(sci, inode);
  BUG_ON(n > rest);

 }
 return err;
}
