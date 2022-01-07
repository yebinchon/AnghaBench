
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int min (int ,int) ;
 int put_unaligned_be32 (int ,unsigned char*) ;

__attribute__((used)) static int spc_modesense_blockdesc(unsigned char *buf, u64 blocks, u32 block_size)
{
 *buf++ = 8;
 put_unaligned_be32(min(blocks, 0xffffffffull), buf);
 buf += 4;
 put_unaligned_be32(block_size, buf);
 return 9;
}
