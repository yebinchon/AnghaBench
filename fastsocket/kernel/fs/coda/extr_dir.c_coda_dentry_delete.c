
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_inode; } ;
struct TYPE_2__ {int c_flags; } ;


 int C_PURGE ;
 TYPE_1__* ITOC (int ) ;
 scalar_t__ is_bad_inode (int ) ;

__attribute__((used)) static int coda_dentry_delete(struct dentry * dentry)
{
 int flags;

 if (!dentry->d_inode)
  return 0;

 flags = (ITOC(dentry->d_inode)->c_flags) & C_PURGE;
 if (is_bad_inode(dentry->d_inode) || flags) {
  return 1;
 }
 return 0;
}
