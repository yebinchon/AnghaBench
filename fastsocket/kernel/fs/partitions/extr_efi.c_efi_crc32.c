
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;


 long crc32 (long,void const*,unsigned long) ;

__attribute__((used)) static inline u32
efi_crc32(const void *buf, unsigned long len)
{
 return (crc32(~0L, buf, len) ^ ~0L);
}
