
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct page {int dummy; } ;
struct nfs_open_dir_context {struct rpc_cred* cred; } ;
struct nfs_entry {int cookie; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int dentry; } ;
struct file {TYPE_1__ f_path; struct nfs_open_dir_context* private_data; } ;
struct TYPE_8__ {unsigned long timestamp; unsigned long gencount; scalar_t__ plus; } ;
typedef TYPE_2__ nfs_readdir_descriptor_t ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int (* readdir ) (int ,struct rpc_cred*,int ,struct page**,int ,scalar_t__) ;} ;
struct TYPE_9__ {int caps; int dtsize; } ;


 int ENOTSUPP ;
 int NFS_CAP_READDIRPLUS ;
 TYPE_6__* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 TYPE_5__* NFS_PROTO (struct inode*) ;
 TYPE_4__* NFS_SERVER (struct inode*) ;
 int clear_bit (int ,int *) ;
 unsigned long jiffies ;
 unsigned long nfs_inc_attr_generation_counter () ;
 int stub1 (int ,struct rpc_cred*,int ,struct page**,int ,scalar_t__) ;

__attribute__((used)) static
int nfs_readdir_xdr_filler(struct page **pages, nfs_readdir_descriptor_t *desc,
   struct nfs_entry *entry, struct file *file, struct inode *inode)
{
 struct nfs_open_dir_context *ctx = file->private_data;
 struct rpc_cred *cred = ctx->cred;
 unsigned long timestamp, gencount;
 int error;

 again:
 timestamp = jiffies;
 gencount = nfs_inc_attr_generation_counter();
 error = NFS_PROTO(inode)->readdir(file->f_path.dentry, cred, entry->cookie, pages,
       NFS_SERVER(inode)->dtsize, desc->plus);
 if (error < 0) {

  if (error == -ENOTSUPP && desc->plus) {
   NFS_SERVER(inode)->caps &= ~NFS_CAP_READDIRPLUS;
   clear_bit(NFS_INO_ADVISE_RDPLUS, &NFS_I(inode)->flags);
   desc->plus = 0;
   goto again;
  }
  goto error;
 }
 desc->timestamp = timestamp;
 desc->gencount = gencount;
error:
 return error;
}
