
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dquot {int dummy; } ;
struct ocfs2_dquot {struct dquot dq_dquot; } ;


 int GFP_NOFS ;
 struct ocfs2_dquot* kmem_cache_zalloc (int ,int ) ;
 int ocfs2_dquot_cachep ;

__attribute__((used)) static struct dquot *ocfs2_alloc_dquot(struct super_block *sb, int type)
{
 struct ocfs2_dquot *dquot =
    kmem_cache_zalloc(ocfs2_dquot_cachep, GFP_NOFS);

 if (!dquot)
  return ((void*)0);
 return &dquot->dq_dquot;
}
