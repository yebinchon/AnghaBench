
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_ino; } ;


 char* fastsockfs_dynamic_dname (struct dentry*,char*,int,char*,int ) ;

__attribute__((used)) static char *fastsockfs_dname(struct dentry *dentry, char *buffer, int buflen)
{
 return fastsockfs_dynamic_dname(dentry, buffer, buflen, "socket:[%lu]",
    dentry->d_inode->i_ino);
}
