
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int put_unaligned_le32 (int ,char*) ;

void btrfs_csum_final(u32 crc, char *result)
{
 put_unaligned_le32(~crc, result);
}
