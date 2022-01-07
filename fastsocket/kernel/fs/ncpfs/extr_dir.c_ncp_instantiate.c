
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncp_entry_info {int file_handle; int ino; } ;
struct inode {int i_sb; } ;
struct TYPE_6__ {int name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int EINVAL ;
 int NCP_SERVER (struct inode*) ;
 int PPRINTK (char*,int ,int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int iunique (int ,int) ;
 int ncp_close_file (int ,int ) ;
 struct inode* ncp_iget (int ,struct ncp_entry_info*) ;

__attribute__((used)) static int ncp_instantiate(struct inode *dir, struct dentry *dentry,
   struct ncp_entry_info *finfo)
{
 struct inode *inode;
 int error = -EINVAL;

 finfo->ino = iunique(dir->i_sb, 2);
 inode = ncp_iget(dir->i_sb, finfo);
 if (!inode)
  goto out_close;
 d_instantiate(dentry,inode);
 error = 0;
out:
 return error;

out_close:
 PPRINTK("ncp_instantiate: %s/%s failed, closing file\n",
  dentry->d_parent->d_name.name, dentry->d_name.name);
 ncp_close_file(NCP_SERVER(dir), finfo->file_handle);
 goto out;
}
