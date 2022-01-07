
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_direct {int d_ino; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ino_t ;


 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 struct vxfs_direct* vxfs_find_entry (struct inode*,struct dentry*,struct page**) ;

__attribute__((used)) static ino_t
vxfs_inode_by_name(struct inode *dip, struct dentry *dp)
{
 struct vxfs_direct *de;
 struct page *pp;
 ino_t ino = 0;

 de = vxfs_find_entry(dip, dp, &pp);
 if (de) {
  ino = de->d_ino;
  kunmap(pp);
  page_cache_release(pp);
 }

 return (ino);
}
