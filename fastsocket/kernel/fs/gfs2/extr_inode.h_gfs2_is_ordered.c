
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ar_data; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_inode {int i_inode; } ;


 scalar_t__ GFS2_DATA_ORDERED ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int gfs2_is_jdata (struct gfs2_inode const*) ;

__attribute__((used)) static inline int gfs2_is_ordered(const struct gfs2_inode *ip)
{
 const struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 return (sdp->sd_args.ar_data == GFS2_DATA_ORDERED) && !gfs2_is_jdata(ip);
}
