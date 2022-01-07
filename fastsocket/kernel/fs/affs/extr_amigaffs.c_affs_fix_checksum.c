
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int s_blocksize; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ be32_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be32 (int ) ;

void
affs_fix_checksum(struct super_block *sb, struct buffer_head *bh)
{
 int cnt = sb->s_blocksize / sizeof(__be32);
 __be32 *ptr = (__be32 *)bh->b_data;
 u32 checksum;
 __be32 *checksumptr;

 checksumptr = ptr + 5;
 *checksumptr = 0;
 for (checksum = 0; cnt > 0; ptr++, cnt--)
  checksum += be32_to_cpu(*ptr);
 *checksumptr = cpu_to_be32(-checksum);
}
