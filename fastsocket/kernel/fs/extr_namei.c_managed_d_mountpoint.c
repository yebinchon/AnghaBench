
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int DCACHE_MOUNTED ;
 scalar_t__ d_mountpoint (struct dentry*) ;

__attribute__((used)) static int managed_d_mountpoint(struct dentry *dentry)
{
 return d_mountpoint(dentry) ? DCACHE_MOUNTED : 0;
}
