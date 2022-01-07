
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_id; } ;


 int NFS_I (struct inode*) ;
 int __nfs3_forget_cached_acls (int ) ;
 int dprintk (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs3_forget_cached_acls(struct inode *inode)
{
 dprintk("NFS: nfs3_forget_cached_acls(%s/%ld)\n", inode->i_sb->s_id,
  inode->i_ino);
 spin_lock(&inode->i_lock);
 __nfs3_forget_cached_acls(NFS_I(inode));
 spin_unlock(&inode->i_lock);
}
