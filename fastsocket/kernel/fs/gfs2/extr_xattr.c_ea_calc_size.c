
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {unsigned int sd_jbsize; } ;
struct gfs2_ea_header {int dummy; } ;
typedef int __be64 ;


 unsigned int ALIGN (int,int) ;
 int DIV_ROUND_UP (size_t,unsigned int) ;

__attribute__((used)) static int ea_calc_size(struct gfs2_sbd *sdp, unsigned int nsize, size_t dsize,
   unsigned int *size)
{
 unsigned int jbsize = sdp->sd_jbsize;


 *size = ALIGN(sizeof(struct gfs2_ea_header) + nsize + dsize, 8);

 if (*size <= jbsize)
  return 1;


 *size = ALIGN(sizeof(struct gfs2_ea_header) + nsize +
        (sizeof(__be64) * DIV_ROUND_UP(dsize, jbsize)), 8);

 return 0;
}
