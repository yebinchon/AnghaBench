
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_extent_tree {TYPE_1__* et_ops; } ;
struct TYPE_2__ {int (* eo_update_clusters ) (struct ocfs2_extent_tree*,int ) ;} ;


 int stub1 (struct ocfs2_extent_tree*,int ) ;

__attribute__((used)) static inline void ocfs2_et_update_clusters(struct ocfs2_extent_tree *et,
         u32 clusters)
{
 et->et_ops->eo_update_clusters(et, clusters);
}
