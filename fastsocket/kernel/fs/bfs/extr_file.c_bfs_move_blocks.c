
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EIO ;
 scalar_t__ bfs_move_block (unsigned long,unsigned long,struct super_block*) ;
 int dprintf (char*,unsigned long,unsigned long,...) ;

__attribute__((used)) static int bfs_move_blocks(struct super_block *sb, unsigned long start,
    unsigned long end, unsigned long where)
{
 unsigned long i;

 dprintf("%08lx-%08lx->%08lx\n", start, end, where);
 for (i = start; i <= end; i++)
  if(bfs_move_block(i, where + i, sb)) {
   dprintf("failed to move block %08lx -> %08lx\n", i,
        where + i);
   return -EIO;
  }
 return 0;
}
