
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int cache_validity; int attrtimeo_timestamp; int attrtimeo; } ;
struct inode {int i_mode; } ;


 int NFSIOS_ATTRINVALIDATE ;
 int NFS_COOKIEVERF (struct inode*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACCESS ;
 int NFS_INO_INVALID_ACL ;
 int NFS_INO_INVALID_ATTR ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_PAGECACHE ;
 int NFS_MINATTRTIMEO (struct inode*) ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int jiffies ;
 int memset (int ,int ,int) ;
 int nfs_fscache_invalidate (struct inode*) ;
 int nfs_inc_stats (struct inode*,int ) ;

__attribute__((used)) static void nfs_zap_caches_locked(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 int mode = inode->i_mode;

 nfs_inc_stats(inode, NFSIOS_ATTRINVALIDATE);

 nfsi->attrtimeo = NFS_MINATTRTIMEO(inode);
 nfsi->attrtimeo_timestamp = jiffies;

 memset(NFS_COOKIEVERF(inode), 0, sizeof(NFS_COOKIEVERF(inode)));
 if (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode)) {
  nfsi->cache_validity |= NFS_INO_INVALID_ATTR|NFS_INO_INVALID_DATA|NFS_INO_INVALID_ACCESS|NFS_INO_INVALID_ACL|NFS_INO_REVAL_PAGECACHE;
  nfs_fscache_invalidate(inode);
 } else {
  nfsi->cache_validity |= NFS_INO_INVALID_ATTR|NFS_INO_INVALID_ACCESS|NFS_INO_INVALID_ACL|NFS_INO_REVAL_PAGECACHE;
 }
}
