
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline u32 transport_get_sectors_10(unsigned char *cdb)
{
 return (u32)(cdb[7] << 8) + cdb[8];
}
