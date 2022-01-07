
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {TYPE_1__* i_rgd; } ;
struct TYPE_2__ {unsigned int rd_length; } ;



__attribute__((used)) static inline unsigned int gfs2_rg_blocks(const struct gfs2_inode *ip,
       unsigned requested)
{
 if (requested < ip->i_rgd->rd_length)
  return requested + 1;
 return ip->i_rgd->rd_length;
}
