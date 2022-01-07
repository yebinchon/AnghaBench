
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline
unsigned long nfs_block_bits(unsigned long bsize, unsigned char *nrbitsp)
{

 if ((bsize & (bsize - 1)) || nrbitsp) {
  unsigned char nrbits;

  for (nrbits = 31; nrbits && !(bsize & (1 << nrbits)); nrbits--)
   ;
  bsize = 1 << nrbits;
  if (nrbitsp)
   *nrbitsp = nrbits;
 }

 return bsize;
}
