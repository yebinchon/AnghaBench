
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct super_block {int dummy; } ;
struct qstr {char* name; } ;
struct proc_ns_operations {int (* put ) (void*) ;int (* inum ) (void*) ;void* (* get ) (struct task_struct*) ;} ;
struct proc_inode {void* ns; struct proc_ns_operations const* ns_ops; } ;
struct inode {int i_state; int i_mode; int * i_fop; int * i_op; int i_ctime; int i_atime; int i_mtime; } ;
struct dentry {int * d_op; } ;


 int CURRENT_TIME ;
 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int I_NEW ;
 struct proc_inode* PROC_I (struct inode*) ;
 int S_IFREG ;
 int S_IRUGO ;
 struct dentry* d_alloc_pseudo (struct super_block*,struct qstr*) ;
 struct dentry* d_instantiate_unique (struct dentry*,struct inode*) ;
 int dput (struct dentry*) ;
 struct inode* iget_locked (struct super_block*,int ) ;
 int ns_dentry_operations ;
 int ns_file_operations ;
 int ns_inode_operations ;
 void* stub1 (struct task_struct*) ;
 int stub2 (void*) ;
 int stub3 (void*) ;
 int stub4 (void*) ;
 int stub5 (void*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct dentry *proc_ns_get_dentry(struct super_block *sb,
 struct task_struct *task, const struct proc_ns_operations *ns_ops)
{
 struct dentry *dentry, *result;
 struct inode *inode;
 struct proc_inode *ei;
 struct qstr qname = { .name = "", };
 void *ns;

 ns = ns_ops->get(task);
 if (!ns)
  return ERR_PTR(-ENOENT);

 dentry = d_alloc_pseudo(sb, &qname);
 if (!dentry) {
  ns_ops->put(ns);
  return ERR_PTR(-ENOMEM);
 }

 inode = iget_locked(sb, ns_ops->inum(ns));
 if (!inode) {
  dput(dentry);
  ns_ops->put(ns);
  return ERR_PTR(-ENOMEM);
 }

 ei = PROC_I(inode);
 if (inode->i_state & I_NEW) {
  inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
  inode->i_op = &ns_inode_operations;
  inode->i_mode = S_IFREG | S_IRUGO;
  inode->i_fop = &ns_file_operations;
  ei->ns_ops = ns_ops;
  ei->ns = ns;
  unlock_new_inode(inode);
 } else {
  ns_ops->put(ns);
 }

 dentry->d_op = &ns_dentry_operations;
 result = d_instantiate_unique(dentry, inode);
 if (result) {
  dput(dentry);
  dentry = result;
 }

 return dentry;
}
