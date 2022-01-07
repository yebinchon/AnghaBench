
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_extent_tree {TYPE_1__* et_ops; } ;
struct TYPE_2__ {int (* eo_get_last_eb_blk ) (struct ocfs2_extent_tree*) ;} ;


 int stub1 (struct ocfs2_extent_tree*) ;

__attribute__((used)) static inline u64 ocfs2_et_get_last_eb_blk(struct ocfs2_extent_tree *et)
{
 return et->et_ops->eo_get_last_eb_blk(et);
}
