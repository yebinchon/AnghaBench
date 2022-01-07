
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;



__attribute__((used)) static inline u32 transport_lba_21(unsigned char *cdb)
{
 return ((cdb[1] & 0x1f) << 16) | (cdb[2] << 8) | cdb[3];
}
