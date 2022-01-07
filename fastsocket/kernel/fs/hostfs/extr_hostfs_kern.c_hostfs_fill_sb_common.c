
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; int s_blocksize_bits; int * s_root; int s_maxbytes; int * s_op; int s_magic; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {char* host_filename; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* HOSTFS_I (struct inode*) ;
 int HOSTFS_SUPER_MAGIC ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAX_LFS_FILESIZE ;
 int PTR_ERR (struct inode*) ;
 int * d_alloc_root (struct inode*) ;
 int dput (int *) ;
 struct inode* hostfs_iget (struct super_block*) ;
 int hostfs_read_inode (struct inode*) ;
 int hostfs_sbops ;
 int init_inode (struct inode*,int *) ;
 int iput (struct inode*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 char* root_ino ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int hostfs_fill_sb_common(struct super_block *sb, void *d, int silent)
{
 struct inode *root_inode;
 char *host_root_path, *req_root = d;
 int err;

 sb->s_blocksize = 1024;
 sb->s_blocksize_bits = 10;
 sb->s_magic = HOSTFS_SUPER_MAGIC;
 sb->s_op = &hostfs_sbops;
 sb->s_maxbytes = MAX_LFS_FILESIZE;


 if (req_root == ((void*)0))
  req_root = "";

 err = -ENOMEM;
 host_root_path = kmalloc(strlen(root_ino) + 1
     + strlen(req_root) + 1, GFP_KERNEL);
 if (host_root_path == ((void*)0))
  goto out;

 sprintf(host_root_path, "%s/%s", root_ino, req_root);

 root_inode = hostfs_iget(sb);
 if (IS_ERR(root_inode)) {
  err = PTR_ERR(root_inode);
  goto out_free;
 }

 err = init_inode(root_inode, ((void*)0));
 if (err)
  goto out_put;

 HOSTFS_I(root_inode)->host_filename = host_root_path;




 host_root_path = ((void*)0);

 err = -ENOMEM;
 sb->s_root = d_alloc_root(root_inode);
 if (sb->s_root == ((void*)0))
  goto out_put;

 err = hostfs_read_inode(root_inode);
 if (err) {

  dput(sb->s_root);
  sb->s_root = ((void*)0);
  goto out;
 }

 return 0;

out_put:
 iput(root_inode);
out_free:
 kfree(host_root_path);
out:
 return err;
}
