
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {scalar_t__ s_ino; } ;
struct inode {scalar_t__ i_ino; } ;



__attribute__((used)) static int sysfs_ilookup_test(struct inode *inode, void *arg)
{
 struct sysfs_dirent *sd = arg;
 return inode->i_ino == sd->s_ino;
}
