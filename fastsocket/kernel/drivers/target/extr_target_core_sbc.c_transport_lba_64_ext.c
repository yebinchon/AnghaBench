
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long long transport_lba_64_ext(unsigned char *cdb)
{
 unsigned int __v1, __v2;

 __v1 = (cdb[12] << 24) | (cdb[13] << 16) | (cdb[14] << 8) | cdb[15];
 __v2 = (cdb[16] << 24) | (cdb[17] << 16) | (cdb[18] << 8) | cdb[19];

 return ((unsigned long long)__v2) | (unsigned long long)__v1 << 32;
}
