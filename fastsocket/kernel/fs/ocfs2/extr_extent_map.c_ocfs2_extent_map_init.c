
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int em_list; scalar_t__ em_num_items; } ;
struct ocfs2_inode_info {TYPE_1__ ip_extent_map; } ;
struct inode {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;

void ocfs2_extent_map_init(struct inode *inode)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 oi->ip_extent_map.em_num_items = 0;
 INIT_LIST_HEAD(&oi->ip_extent_map.em_list);
}
