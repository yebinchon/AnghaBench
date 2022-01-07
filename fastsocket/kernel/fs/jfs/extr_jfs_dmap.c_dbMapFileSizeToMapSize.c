
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
typedef int s64 ;
struct TYPE_2__ {int l2bsize; int l2nbperpage; } ;


 int BMAPPGTOLEV (int) ;
 TYPE_1__* JFS_SBI (struct super_block*) ;
 int L2BPERDMAP ;
 int LPERCTL ;
 int MAXL0PAGES ;
 int MAXL1PAGES ;

s64 dbMapFileSizeToMapSize(struct inode * ipbmap)
{
 struct super_block *sb = ipbmap->i_sb;
 s64 nblocks;
 s64 npages, ndmaps;
 int level, i;
 int complete, factor;

 nblocks = ipbmap->i_size >> JFS_SBI(sb)->l2bsize;
 npages = nblocks >> JFS_SBI(sb)->l2nbperpage;
 level = BMAPPGTOLEV(npages);





 ndmaps = 0;
 npages--;

 npages -= (2 - level);
 npages--;
 for (i = level; i >= 0; i--) {
  factor =
      (i == 2) ? MAXL1PAGES : ((i == 1) ? MAXL0PAGES : 1);
  complete = (u32) npages / factor;
  ndmaps += complete * ((i == 2) ? LPERCTL * LPERCTL :
          ((i == 1) ? LPERCTL : 1));


  npages = (u32) npages % factor;

  npages--;
 }




 nblocks = ndmaps << L2BPERDMAP;

 return (nblocks);
}
