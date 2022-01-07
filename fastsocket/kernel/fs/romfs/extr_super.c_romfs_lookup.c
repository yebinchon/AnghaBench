
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct romfs_inode {int spec; int next; } ;
struct nameidata {int dummy; } ;
struct inode {unsigned long i_ino; int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int ri ;


 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 unsigned long ROMFH_HRD ;
 unsigned long ROMFH_MASK ;
 int ROMFH_SIZE ;
 unsigned long ROMFH_TYPE ;
 unsigned long be32_to_cpu (int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int romfs_dev_read (int ,unsigned long,struct romfs_inode*,int) ;
 int romfs_dev_strcmp (int ,int,char const*,int) ;
 struct inode* romfs_iget (int ,unsigned long) ;
 unsigned long romfs_maxsize (int ) ;

__attribute__((used)) static struct dentry *romfs_lookup(struct inode *dir, struct dentry *dentry,
       struct nameidata *nd)
{
 unsigned long offset, maxoff;
 struct inode *inode;
 struct romfs_inode ri;
 const char *name;
 int len, ret;

 offset = dir->i_ino & ROMFH_MASK;
 ret = romfs_dev_read(dir->i_sb, offset, &ri, ROMFH_SIZE);
 if (ret < 0)
  goto error;



 maxoff = romfs_maxsize(dir->i_sb);
 offset = be32_to_cpu(ri.spec) & ROMFH_MASK;

 name = dentry->d_name.name;
 len = dentry->d_name.len;

 for (;;) {
  if (!offset || offset >= maxoff)
   goto out0;

  ret = romfs_dev_read(dir->i_sb, offset, &ri, sizeof(ri));
  if (ret < 0)
   goto error;


  ret = romfs_dev_strcmp(dir->i_sb, offset + ROMFH_SIZE, name,
           len);
  if (ret < 0)
   goto error;
  if (ret == 1)
   break;


  offset = be32_to_cpu(ri.next) & ROMFH_MASK;
 }


 if ((be32_to_cpu(ri.next) & ROMFH_TYPE) == ROMFH_HRD)
  offset = be32_to_cpu(ri.spec) & ROMFH_MASK;

 inode = romfs_iget(dir->i_sb, offset);
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  goto error;
 }
 goto outi;
out0:
 inode = ((void*)0);
outi:
 d_add(dentry, inode);
 ret = 0;
error:
 return ERR_PTR(ret);
}
