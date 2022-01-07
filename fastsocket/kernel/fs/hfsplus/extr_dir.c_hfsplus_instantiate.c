
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {int dummy; } ;
struct dentry {void* d_fsdata; } ;


 int d_instantiate (struct dentry*,struct inode*) ;

__attribute__((used)) static inline void hfsplus_instantiate(struct dentry *dentry,
           struct inode *inode, u32 cnid)
{
 dentry->d_fsdata = (void *)(unsigned long)cnid;
 d_instantiate(dentry, inode);
}
