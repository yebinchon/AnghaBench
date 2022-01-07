
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int dummy; } ;
struct address_space {int * a_ops; struct backing_dev_info* backing_dev_info; int * assoc_mapping; scalar_t__ flags; int * host; } ;


 int GFP_NOFS ;
 int def_btnode_aops ;
 int mapping_set_gfp_mask (struct address_space*,int ) ;

void nilfs_btnode_cache_init(struct address_space *btnc,
        struct backing_dev_info *bdi)
{
 btnc->host = ((void*)0);
 btnc->flags = 0;
 mapping_set_gfp_mask(btnc, GFP_NOFS);
 btnc->assoc_mapping = ((void*)0);
 btnc->backing_dev_info = bdi;
 btnc->a_ops = &def_btnode_aops;
}
