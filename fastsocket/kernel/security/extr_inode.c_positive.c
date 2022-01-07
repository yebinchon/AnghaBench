
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {scalar_t__ d_inode; } ;


 int d_unhashed (struct dentry*) ;

__attribute__((used)) static inline int positive(struct dentry *dentry)
{
 return dentry->d_inode && !d_unhashed(dentry);
}
