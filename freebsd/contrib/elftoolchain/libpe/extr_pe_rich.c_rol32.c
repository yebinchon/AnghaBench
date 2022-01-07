
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
rol32(uint32_t n, int c)
{

 c &= 0x1f;

 return ((n << c) | (n >> (0x20 - c)));
}
