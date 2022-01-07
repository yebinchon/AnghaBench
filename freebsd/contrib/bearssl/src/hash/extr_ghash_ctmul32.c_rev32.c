
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RMS (int,int) ;

__attribute__((used)) static uint32_t
rev32(uint32_t x)
{





 do { x = ((x & (uint32_t)(0x55555555)) << (1)) | ((x >> (1)) & (uint32_t)(0x55555555)); } while (0);
 do { x = ((x & (uint32_t)(0x33333333)) << (2)) | ((x >> (2)) & (uint32_t)(0x33333333)); } while (0);
 do { x = ((x & (uint32_t)(0x0F0F0F0F)) << (4)) | ((x >> (4)) & (uint32_t)(0x0F0F0F0F)); } while (0);
 do { x = ((x & (uint32_t)(0x00FF00FF)) << (8)) | ((x >> (8)) & (uint32_t)(0x00FF00FF)); } while (0);
 return (x << 16) | (x >> 16);


}
