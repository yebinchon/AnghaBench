
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fuse_inode {int * forget_req; int nlookup; int nodeid; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;


 int MS_ACTIVE ;
 int fuse_send_forget (struct fuse_conn*,int *,int ,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;

__attribute__((used)) static void fuse_clear_inode(struct inode *inode)
{
 if (inode->i_sb->s_flags & MS_ACTIVE) {
  struct fuse_conn *fc = get_fuse_conn(inode);
  struct fuse_inode *fi = get_fuse_inode(inode);
  fuse_send_forget(fc, fi->forget_req, fi->nodeid, fi->nlookup);
  fi->forget_req = ((void*)0);
 }
}
