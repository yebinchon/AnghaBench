
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_UNHASHED ;

__attribute__((used)) static int anon_inodefs_delete_dentry(struct dentry *dentry)
{




 dentry->d_flags |= DCACHE_UNHASHED;
 return 1;
}
