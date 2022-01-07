
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static int close_blocks(u64 blocknr, u64 other, u32 blocksize)
{
 if (blocknr < other && other - (blocknr + blocksize) < 32768)
  return 1;
 if (blocknr > other && blocknr - (other + blocksize) < 32768)
  return 1;
 return 0;
}
