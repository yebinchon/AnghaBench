
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hugetlbfs_sb_info {int dummy; } ;
struct hugetlbfs_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 struct hugetlbfs_sb_info* HUGETLBFS_SB (struct super_block*) ;
 int hugetlbfs_dec_free_inodes (struct hugetlbfs_sb_info*) ;
 int hugetlbfs_inc_free_inodes (struct hugetlbfs_sb_info*) ;
 int hugetlbfs_inode_cachep ;
 struct hugetlbfs_inode_info* kmem_cache_alloc (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct inode *hugetlbfs_alloc_inode(struct super_block *sb)
{
 struct hugetlbfs_sb_info *sbinfo = HUGETLBFS_SB(sb);
 struct hugetlbfs_inode_info *p;

 if (unlikely(!hugetlbfs_dec_free_inodes(sbinfo)))
  return ((void*)0);
 p = kmem_cache_alloc(hugetlbfs_inode_cachep, GFP_KERNEL);
 if (unlikely(!p)) {
  hugetlbfs_inc_free_inodes(sbinfo);
  return ((void*)0);
 }
 return &p->vfs_inode;
}
