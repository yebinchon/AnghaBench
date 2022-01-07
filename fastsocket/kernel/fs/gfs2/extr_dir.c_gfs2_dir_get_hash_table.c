
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int i_lock; } ;
struct gfs2_inode {int i_diskflags; int i_depth; int * i_hash_cache; struct inode i_inode; } ;
typedef int __be64 ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 int * ERR_PTR (int) ;
 int GFP_NOFS ;
 int GFS2_DIF_EXHASH ;
 int PAGE_KERNEL ;
 int __GFP_NOWARN ;
 int * __vmalloc (int,int,int ) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_dir_read_data (struct gfs2_inode*,char*,int ,int,int) ;
 int i_size_read (struct inode*) ;
 scalar_t__ is_vmalloc_addr (int *) ;
 int kfree (int *) ;
 int * kmalloc (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfree (int *) ;

__attribute__((used)) static __be64 *gfs2_dir_get_hash_table(struct gfs2_inode *ip)
{
 struct inode *inode = &ip->i_inode;
 int ret;
 u32 hsize;
 __be64 *hc;

 BUG_ON(!(ip->i_diskflags & GFS2_DIF_EXHASH));

 hc = ip->i_hash_cache;
 if (hc)
  return hc;

 hsize = 1 << ip->i_depth;
 hsize *= sizeof(__be64);
 if (hsize != i_size_read(inode)) {
  gfs2_consist_inode(ip);
  return ERR_PTR(-EIO);
 }

 hc = kmalloc(hsize, GFP_NOFS | __GFP_NOWARN);
 if (hc == ((void*)0))
  hc = __vmalloc(hsize, GFP_NOFS, PAGE_KERNEL);

 if (hc == ((void*)0))
  return ERR_PTR(-ENOMEM);

 ret = gfs2_dir_read_data(ip, (char *)hc, 0, hsize, 1);
 if (ret < 0) {
  if (is_vmalloc_addr(hc))
   vfree(hc);
  else
   kfree(hc);
  return ERR_PTR(ret);
 }

 spin_lock(&inode->i_lock);
 if (ip->i_hash_cache) {
  if (is_vmalloc_addr(hc))
   vfree(hc);
  else
   kfree(hc);
 } else {
  ip->i_hash_cache = hc;
 }
 spin_unlock(&inode->i_lock);

 return ip->i_hash_cache;
}
