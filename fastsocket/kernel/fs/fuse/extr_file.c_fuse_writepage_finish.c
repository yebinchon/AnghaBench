
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; } ;
struct fuse_req {int * pages; int writepages_entry; struct inode* inode; } ;
struct fuse_inode {int page_waitq; } ;
struct fuse_conn {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct TYPE_2__ {struct backing_dev_info* backing_dev_info; } ;


 int BDI_WRITEBACK ;
 int NR_WRITEBACK_TEMP ;
 int bdi_writeout_inc (struct backing_dev_info*) ;
 int dec_bdi_stat (struct backing_dev_info*,int ) ;
 int dec_zone_page_state (int ,int ) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int list_del (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void fuse_writepage_finish(struct fuse_conn *fc, struct fuse_req *req)
{
 struct inode *inode = req->inode;
 struct fuse_inode *fi = get_fuse_inode(inode);
 struct backing_dev_info *bdi = inode->i_mapping->backing_dev_info;

 list_del(&req->writepages_entry);
 dec_bdi_stat(bdi, BDI_WRITEBACK);
 dec_zone_page_state(req->pages[0], NR_WRITEBACK_TEMP);
 bdi_writeout_inc(bdi);
 wake_up(&fi->page_waitq);
}
