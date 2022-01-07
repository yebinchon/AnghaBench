
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct nfs_open_dir_context {scalar_t__ dir_cookie; } ;
struct inode {int dummy; } ;
struct TYPE_14__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_pos; int f_mapping; struct nfs_open_dir_context* private_data; TYPE_1__ f_path; } ;
struct TYPE_17__ {int name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
struct TYPE_18__ {int plus; scalar_t__ eof; scalar_t__ page_index; scalar_t__* dir_cookie; int decode; struct file* file; } ;
typedef TYPE_5__ nfs_readdir_descriptor_t ;
typedef int filldir_t ;
struct TYPE_15__ {int name; } ;
struct TYPE_16__ {TYPE_2__ d_name; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int decode_dirent; } ;


 int EBADCOOKIE ;
 int ETOOSMALL ;
 int FILE ;
 int NFSIOS_VFSGETDENTS ;
 TYPE_11__* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 TYPE_10__* NFS_PROTO (struct inode*) ;
 int clear_bit (int ,int *) ;
 int dfprintk (int ,char*,int ,int ,int) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ nfs_attribute_cache_expired (struct inode*) ;
 int nfs_block_sillyrename (struct dentry*) ;
 int nfs_do_filldir (TYPE_5__*,void*,int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_revalidate_mapping (struct inode*,int ) ;
 int nfs_unblock_sillyrename (struct dentry*) ;
 scalar_t__ nfs_use_readdirplus (struct inode*,struct file*) ;
 int nfs_zap_caches (struct inode*) ;
 int readdir_search_pagecache (TYPE_5__*) ;
 int uncached_readdir (TYPE_5__*,void*,int ) ;

__attribute__((used)) static int nfs_readdir(struct file *filp, void *dirent, filldir_t filldir)
{
 struct dentry *dentry = filp->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 nfs_readdir_descriptor_t my_desc,
   *desc = &my_desc;
 struct nfs_open_dir_context *dir_ctx = filp->private_data;
 int res = 0;

 dfprintk(FILE, "NFS: readdir(%s/%s) starting at cookie %llu\n",
   dentry->d_parent->d_name.name, dentry->d_name.name,
   (long long)filp->f_pos);
 nfs_inc_stats(inode, NFSIOS_VFSGETDENTS);







 memset(desc, 0, sizeof(*desc));

 desc->file = filp;
 desc->dir_cookie = &dir_ctx->dir_cookie;
 desc->decode = NFS_PROTO(inode)->decode_dirent;
 desc->plus = nfs_use_readdirplus(inode, filp) ? 1 : 0;

 nfs_block_sillyrename(dentry);
 if (filp->f_pos == 0 || nfs_attribute_cache_expired(inode))
  res = nfs_revalidate_mapping(inode, filp->f_mapping);
 if (res < 0)
  goto out;

 do {
  res = readdir_search_pagecache(desc);

  if (res == -EBADCOOKIE) {
   res = 0;

   if (*desc->dir_cookie && desc->eof == 0) {

    res = uncached_readdir(desc, dirent, filldir);
    if (res == 0)
     continue;
   }
   break;
  }
  if (res == -ETOOSMALL && desc->plus) {
   clear_bit(NFS_INO_ADVISE_RDPLUS, &NFS_I(inode)->flags);
   nfs_zap_caches(inode);
   desc->page_index = 0;
   desc->plus = 0;
   desc->eof = 0;
   continue;
  }
  if (res < 0)
   break;

  res = nfs_do_filldir(desc, dirent, filldir);
  if (res < 0)
   break;
 } while (!desc->eof);
out:
 nfs_unblock_sillyrename(dentry);
 if (res > 0)
  res = 0;
 dfprintk(FILE, "NFS: readdir(%s/%s) returns %d\n",
   dentry->d_parent->d_name.name, dentry->d_name.name,
   res);
 return res;
}
