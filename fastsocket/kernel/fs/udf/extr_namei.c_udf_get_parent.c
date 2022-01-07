
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct qstr {char* name; int len; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int i_sb; } ;


 int EACCES ;
 struct dentry* ERR_PTR (int ) ;
 int brelse (scalar_t__) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct kernel_lb_addr lelb_to_cpu (int ) ;
 int lock_kernel () ;
 int udf_find_entry (TYPE_2__*,struct qstr*,struct udf_fileident_bh*,struct fileIdentDesc*) ;
 struct inode* udf_iget (int ,struct kernel_lb_addr*) ;
 int unlock_kernel () ;

__attribute__((used)) static struct dentry *udf_get_parent(struct dentry *child)
{
 struct kernel_lb_addr tloc;
 struct inode *inode = ((void*)0);
 struct qstr dotdot = {.name = "..", .len = 2};
 struct fileIdentDesc cfi;
 struct udf_fileident_bh fibh;

 lock_kernel();
 if (!udf_find_entry(child->d_inode, &dotdot, &fibh, &cfi))
  goto out_unlock;

 if (fibh.sbh != fibh.ebh)
  brelse(fibh.ebh);
 brelse(fibh.sbh);

 tloc = lelb_to_cpu(cfi.icb.extLocation);
 inode = udf_iget(child->d_inode->i_sb, &tloc);
 if (!inode)
  goto out_unlock;
 unlock_kernel();

 return d_obtain_alias(inode);
out_unlock:
 unlock_kernel();
 return ERR_PTR(-EACCES);
}
