
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dquot {int dummy; } ;


 int GFP_NOFS ;
 int dquot_cachep ;
 struct dquot* kmem_cache_zalloc (int ,int ) ;

struct dquot *dquot_alloc(struct super_block *sb, int type)
{
 return kmem_cache_zalloc(dquot_cachep, GFP_NOFS);
}
