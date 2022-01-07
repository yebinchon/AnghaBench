
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct nfs_inode {int cache_validity; int flags; } ;
struct nfs_fattr {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_mode; } ;
struct TYPE_4__ {int (* getattr ) (struct nfs_server*,int ,struct nfs_fattr*) ;} ;
struct TYPE_3__ {int s_id; } ;


 int ENOMEM ;
 int ESTALE ;
 int NFSIOS_INODEREVALIDATE ;
 int NFS_FH (struct inode*) ;
 scalar_t__ NFS_FILEID (struct inode*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACL ;
 int NFS_INO_STALE ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int PAGECACHE ;
 int S_ISDIR (int ) ;
 int dfprintk (int ,char*,int ,long long,...) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_refresh_inode (struct inode*,struct nfs_fattr*) ;
 int nfs_zap_acl_cache (struct inode*) ;
 int nfs_zap_caches (struct inode*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct nfs_server*,int ,struct nfs_fattr*) ;

int
__nfs_revalidate_inode(struct nfs_server *server, struct inode *inode)
{
 int status = -ESTALE;
 struct nfs_fattr *fattr = ((void*)0);
 struct nfs_inode *nfsi = NFS_I(inode);

 dfprintk(PAGECACHE, "NFS: revalidating (%s/%Ld)\n",
  inode->i_sb->s_id, (long long)NFS_FILEID(inode));

 if (is_bad_inode(inode))
  goto out;
 if (NFS_STALE(inode))
  goto out;

 status = -ENOMEM;
 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  goto out;

 nfs_inc_stats(inode, NFSIOS_INODEREVALIDATE);
 status = NFS_PROTO(inode)->getattr(server, NFS_FH(inode), fattr);
 if (status != 0) {
  dfprintk(PAGECACHE, "nfs_revalidate_inode: (%s/%Ld) getattr failed, error=%d\n",
    inode->i_sb->s_id,
    (long long)NFS_FILEID(inode), status);
  if (status == -ESTALE) {
   nfs_zap_caches(inode);
   if (!S_ISDIR(inode->i_mode))
    set_bit(NFS_INO_STALE, &NFS_I(inode)->flags);
  }
  goto out;
 }

 status = nfs_refresh_inode(inode, fattr);
 if (status) {
  dfprintk(PAGECACHE, "nfs_revalidate_inode: (%s/%Ld) refresh failed, error=%d\n",
    inode->i_sb->s_id,
    (long long)NFS_FILEID(inode), status);
  goto out;
 }

 if (nfsi->cache_validity & NFS_INO_INVALID_ACL)
  nfs_zap_acl_cache(inode);

 dfprintk(PAGECACHE, "NFS: (%s/%Ld) revalidation complete\n",
  inode->i_sb->s_id,
  (long long)NFS_FILEID(inode));

 out:
 nfs_free_fattr(fattr);
 return status;
}
