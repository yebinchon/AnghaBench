
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {struct inode i_inode; int * i_res; int * i_rgd; int * i_gl; scalar_t__ i_flags; } ;


 int GFP_KERNEL ;
 int gfs2_inode_cachep ;
 struct gfs2_inode* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static struct inode *gfs2_alloc_inode(struct super_block *sb)
{
 struct gfs2_inode *ip;

 ip = kmem_cache_alloc(gfs2_inode_cachep, GFP_KERNEL);
 if (ip) {
  ip->i_flags = 0;
  ip->i_gl = ((void*)0);
  ip->i_rgd = ((void*)0);
  ip->i_res = ((void*)0);
 }
 return &ip->i_inode;
}
