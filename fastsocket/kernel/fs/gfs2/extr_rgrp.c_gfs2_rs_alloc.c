
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_rw_mutex; TYPE_1__* i_res; } ;
struct TYPE_2__ {int rs_node; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int down_write (int *) ;
 int gfs2_rsrv_cachep ;
 TYPE_1__* kmem_cache_zalloc (int ,int ) ;
 int rb_init_node (int *) ;
 int up_write (int *) ;

int gfs2_rs_alloc(struct gfs2_inode *ip)
{
 int error = 0;

 down_write(&ip->i_rw_mutex);
 if (ip->i_res)
  goto out;

 ip->i_res = kmem_cache_zalloc(gfs2_rsrv_cachep, GFP_NOFS);
 if (!ip->i_res) {
  error = -ENOMEM;
  goto out;
 }

 rb_init_node(&ip->i_res->rs_node);
 out:
 up_write(&ip->i_rw_mutex);
 return error;
}
