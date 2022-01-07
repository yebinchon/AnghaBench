
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 transport_get_sectors_6(unsigned char *cdb)
{
 return cdb[4] ? : 256;
}
