
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_time_gran; int s_blocksize_bits; int * s_export_op; int s_root; int s_blocksize; int * s_op; int s_magic; int s_maxbytes; int s_flags; } ;
struct inode {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_4__ {TYPE_1__* ses; } ;
struct TYPE_3__ {int capabilities; } ;


 int CAP_LARGE_FILES ;
 int CIFS_MAGIC_NUMBER ;
 int CIFS_MAX_MSGSIZE ;
 int CIFS_MOUNT_POSIXACL ;
 int CIFS_MOUNT_SERVER_INUM ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAX_LFS_FILESIZE ;
 int MAX_NON_LFS ;
 int MS_POSIXACL ;
 int PTR_ERR (struct inode*) ;
 int cERROR (int,char*) ;
 int cFYI (int,char*) ;
 int cifs_export_ops ;
 struct inode* cifs_root_iget (struct super_block*) ;
 TYPE_2__* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cifs_super_ops ;
 int d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int
cifs_read_super(struct super_block *sb)
{
 struct inode *inode;
 struct cifs_sb_info *cifs_sb;
 int rc = 0;

 cifs_sb = CIFS_SB(sb);

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIXACL)
  sb->s_flags |= MS_POSIXACL;

 if (cifs_sb_master_tcon(cifs_sb)->ses->capabilities & CAP_LARGE_FILES)
  sb->s_maxbytes = MAX_LFS_FILESIZE;
 else
  sb->s_maxbytes = MAX_NON_LFS;


 sb->s_time_gran = 100;

 sb->s_magic = CIFS_MAGIC_NUMBER;
 sb->s_op = &cifs_super_ops;
 sb->s_blocksize = CIFS_MAX_MSGSIZE;
 sb->s_blocksize_bits = 14;
 inode = cifs_root_iget(sb);

 if (IS_ERR(inode)) {
  rc = PTR_ERR(inode);
  inode = ((void*)0);
  goto out_no_root;
 }

 sb->s_root = d_alloc_root(inode);

 if (!sb->s_root) {
  rc = -ENOMEM;
  goto out_no_root;
 }
 return 0;

out_no_root:
 cERROR(1, "cifs_read_super: get root inode failed");
 if (inode)
  iput(inode);

 return rc;
}
