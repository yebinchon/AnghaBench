
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {int dummy; } ;


 int CREATE ;
 struct buffer_head* gfs2_getbuf (struct gfs2_glock*,int ,int ) ;
 int meta_prep_new (struct buffer_head*) ;

struct buffer_head *gfs2_meta_new(struct gfs2_glock *gl, u64 blkno)
{
 struct buffer_head *bh;
 bh = gfs2_getbuf(gl, blkno, CREATE);
 meta_prep_new(bh);
 return bh;
}
