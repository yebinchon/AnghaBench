
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct rpc_inode {int in_downcall; struct inode vfs_inode; } ;
struct gss_upcall_msg {int list; int count; int uid; struct rpc_inode* inode; } ;


 struct gss_upcall_msg* __gss_find_upcall (struct rpc_inode*,int ) ;
 int atomic_inc (int *) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline struct gss_upcall_msg *
gss_add_msg(struct gss_upcall_msg *gss_msg)
{
 struct rpc_inode *rpci = gss_msg->inode;
 struct inode *inode = &rpci->vfs_inode;
 struct gss_upcall_msg *old;

 spin_lock(&inode->i_lock);
 old = __gss_find_upcall(rpci, gss_msg->uid);
 if (old == ((void*)0)) {
  atomic_inc(&gss_msg->count);
  list_add(&gss_msg->list, &rpci->in_downcall);
 } else
  gss_msg = old;
 spin_unlock(&inode->i_lock);
 return gss_msg;
}
