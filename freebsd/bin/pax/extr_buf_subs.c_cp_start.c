
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t BLKMULT ;
 int MAXBLK ;
 int blksz ;
 int * buf ;
 int * bufmem ;
 int rdblksz ;

void
cp_start(void)
{
 buf = &(bufmem[BLKMULT]);
 rdblksz = blksz = MAXBLK;
}
