
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct metapath {int * mp_bh; } ;
struct gfs2_inode {int i_height; } ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;
 int gfs2_meta_indirect_buffer (struct gfs2_inode*,unsigned int,int ,int *) ;
 int * metapointer (unsigned int,struct metapath*) ;

__attribute__((used)) static int lookup_metapath(struct gfs2_inode *ip, struct metapath *mp)
{
 unsigned int end_of_metadata = ip->i_height - 1;
 unsigned int x;
 __be64 *ptr;
 u64 dblock;
 int ret;

 for (x = 0; x < end_of_metadata; x++) {
  ptr = metapointer(x, mp);
  dblock = be64_to_cpu(*ptr);
  if (!dblock)
   return x + 1;

  ret = gfs2_meta_indirect_buffer(ip, x+1, dblock, &mp->mp_bh[x+1]);
  if (ret)
   return ret;
 }

 return ip->i_height;
}
