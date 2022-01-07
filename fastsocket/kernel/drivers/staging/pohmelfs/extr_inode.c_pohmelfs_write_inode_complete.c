
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_inode {int state; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int NETFS_INODE_REMOTE_SYNCED ;
 struct pohmelfs_inode* POHMELFS_I (struct inode*) ;
 int clear_bit (int ,int *) ;
 int mark_inode_dirty (struct inode*) ;
 int pohmelfs_put_inode (struct pohmelfs_inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int pohmelfs_write_inode_complete(struct page **pages, unsigned int page_num,
  void *private, int err)
{
 struct inode *inode = private;
 struct pohmelfs_inode *pi = POHMELFS_I(inode);

 if (inode) {
  if (err) {
   mark_inode_dirty(inode);
   clear_bit(NETFS_INODE_REMOTE_SYNCED, &pi->state);
  } else {
   set_bit(NETFS_INODE_REMOTE_SYNCED, &pi->state);
  }

  pohmelfs_put_inode(pi);
 }

 return err;
}
