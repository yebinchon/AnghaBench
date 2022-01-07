
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int RMS (int,int) ;

__attribute__((used)) static uint64_t
rev64(uint64_t x)
{





 do { x = ((x & (uint64_t)(0x5555555555555555)) << (1)) | ((x >> (1)) & (uint64_t)(0x5555555555555555)); } while (0);
 do { x = ((x & (uint64_t)(0x3333333333333333)) << (2)) | ((x >> (2)) & (uint64_t)(0x3333333333333333)); } while (0);
 do { x = ((x & (uint64_t)(0x0F0F0F0F0F0F0F0F)) << (4)) | ((x >> (4)) & (uint64_t)(0x0F0F0F0F0F0F0F0F)); } while (0);
 do { x = ((x & (uint64_t)(0x00FF00FF00FF00FF)) << (8)) | ((x >> (8)) & (uint64_t)(0x00FF00FF00FF00FF)); } while (0);
 do { x = ((x & (uint64_t)(0x0000FFFF0000FFFF)) << (16)) | ((x >> (16)) & (uint64_t)(0x0000FFFF0000FFFF)); } while (0);
 return (x << 32) | (x >> 32);


}
