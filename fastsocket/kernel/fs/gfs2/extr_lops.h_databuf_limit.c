
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
typedef int __be64 ;


 int DATABUF_OFFSET ;

__attribute__((used)) static inline unsigned int databuf_limit(struct gfs2_sbd *sdp)
{
 unsigned int limit;

 limit = (sdp->sd_sb.sb_bsize - DATABUF_OFFSET) / (2 * sizeof(__be64));
 return limit;
}
