
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gfs2_sbd {int sd_rgrps; } ;
struct gfs2_inode {int i_inode; } ;
typedef int skip ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int get_random_bytes (int*,int) ;

__attribute__((used)) static u32 gfs2_orlov_skip(const struct gfs2_inode *ip)
{
 const struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 u32 skip;

 get_random_bytes(&skip, sizeof(skip));
 return skip % sdp->sd_rgrps;
}
