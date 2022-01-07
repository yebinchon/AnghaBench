
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 transport_get_sectors_16(unsigned char *cdb)
{
 return (u32)(cdb[10] << 24) + (cdb[11] << 16) +
      (cdb[12] << 8) + cdb[13];
}
