
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct coda_inode_info {struct inode vfs_inode; scalar_t__ c_cached_perm; scalar_t__ c_uid; scalar_t__ c_flags; int c_fid; } ;
struct CodaFid {int dummy; } ;


 int GFP_KERNEL ;
 int coda_inode_cachep ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static struct inode *coda_alloc_inode(struct super_block *sb)
{
 struct coda_inode_info *ei;
 ei = (struct coda_inode_info *)kmem_cache_alloc(coda_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 memset(&ei->c_fid, 0, sizeof(struct CodaFid));
 ei->c_flags = 0;
 ei->c_uid = 0;
 ei->c_cached_perm = 0;
 return &ei->vfs_inode;
}
