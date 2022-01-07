
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_MANAGE_TRANSIT ;

__attribute__((used)) static inline void __managed_dentry_set_transit(struct dentry *dentry)
{
 dentry->d_flags |= DCACHE_MANAGE_TRANSIT;
}
