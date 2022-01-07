
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int crc32c (int ,char const*,int) ;

__attribute__((used)) static inline u64 btrfs_name_hash(const char *name, int len)
{
 return crc32c((u32)~1, name, len);
}
