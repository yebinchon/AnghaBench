
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int __le32 ;
struct TYPE_9__ {int file_handle; int volNumber; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ m; } ;


 int DPRINTK (char*,struct inode*,struct dentry*,char const*) ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 TYPE_6__* NCP_FINFO (struct inode*) ;
 unsigned int NCP_MAX_SYMLINK_SIZE ;
 int NCP_MOUNT_SYMLINKS ;
 TYPE_2__* NCP_SERVER (struct inode*) ;
 int NCP_SYMLINK_MAGIC0 ;
 int NCP_SYMLINK_MAGIC1 ;
 int O_WRONLY ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int aHIDDEN ;
 int aSHARED ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 scalar_t__ ncp_create_new (struct inode*,struct dentry*,int,int ,int) ;
 int ncp_inode_close (struct inode*) ;
 int ncp_io2vol (TYPE_2__*,char*,int*,char const*,int,int ) ;
 scalar_t__ ncp_is_nfs_extras (TYPE_2__*,int ) ;
 int ncp_make_closed (struct inode*) ;
 scalar_t__ ncp_make_open (struct inode*,int ) ;
 scalar_t__ ncp_write_kernel (TYPE_2__*,int ,int ,int,char*,int*) ;
 int strlen (char const*) ;

int ncp_symlink(struct inode *dir, struct dentry *dentry, const char *symname) {
 struct inode *inode;
 char *rawlink;
 int length, err, i, outlen;
 int kludge;
 int mode;
 __le32 attr;
 unsigned int hdr;

 DPRINTK("ncp_symlink(dir=%p,dentry=%p,symname=%s)\n",dir,dentry,symname);

 if (ncp_is_nfs_extras(NCP_SERVER(dir), NCP_FINFO(dir)->volNumber))
  kludge = 0;
 else






  return -EPERM;

 rawlink = kmalloc(NCP_MAX_SYMLINK_SIZE, GFP_KERNEL);
 if (!rawlink)
  return -ENOMEM;

 if (kludge) {
  mode = 0;
  attr = aSHARED | aHIDDEN;
  ((__le32 *)rawlink)[0]=NCP_SYMLINK_MAGIC0;
  ((__le32 *)rawlink)[1]=NCP_SYMLINK_MAGIC1;
  hdr = 8;
 } else {
  mode = S_IFLNK | S_IRWXUGO;
  attr = 0;
  hdr = 0;
 }

 length = strlen(symname);


 outlen = NCP_MAX_SYMLINK_SIZE - hdr;
 err = ncp_io2vol(NCP_SERVER(dir), rawlink + hdr, &outlen, symname, length, 0);
 if (err)
  goto failfree;

 outlen += hdr;

 err = -EIO;
 if (ncp_create_new(dir,dentry,mode,0,attr)) {
  goto failfree;
 }

 inode=dentry->d_inode;

 if (ncp_make_open(inode, O_WRONLY))
  goto failfree;

 if (ncp_write_kernel(NCP_SERVER(inode), NCP_FINFO(inode)->file_handle,
        0, outlen, rawlink, &i) || i!=outlen) {
  goto fail;
 }

 ncp_inode_close(inode);
 ncp_make_closed(inode);
 kfree(rawlink);
 return 0;
fail:;
 ncp_inode_close(inode);
 ncp_make_closed(inode);
failfree:;
 kfree(rawlink);
 return err;
}
