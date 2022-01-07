
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_writecount; } ;
struct gfs2_inode {int i_rw_mutex; TYPE_1__* i_res; struct inode i_inode; } ;
struct TYPE_3__ {int rs_free; } ;


 int BUG_ON (int ) ;
 int atomic_read (int *) ;
 int down_write (int *) ;
 int gfs2_rs_deltree (TYPE_1__*) ;
 int gfs2_rsrv_cachep ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int up_write (int *) ;

void gfs2_rs_delete(struct gfs2_inode *ip)
{
 struct inode *inode = &ip->i_inode;

 down_write(&ip->i_rw_mutex);
 if (ip->i_res && atomic_read(&inode->i_writecount) <= 1) {
  gfs2_rs_deltree(ip->i_res);
  BUG_ON(ip->i_res->rs_free);
  kmem_cache_free(gfs2_rsrv_cachep, ip->i_res);
  ip->i_res = ((void*)0);
 }
 up_write(&ip->i_rw_mutex);
}
