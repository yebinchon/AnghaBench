
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btrfs_root {int dummy; } ;


 int crc32c (int ,char*,size_t) ;

u32 btrfs_csum_data(struct btrfs_root *root, char *data, u32 seed, size_t len)
{
 return crc32c(seed, data, len);
}
