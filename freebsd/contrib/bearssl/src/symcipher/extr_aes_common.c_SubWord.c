
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__* S ;

__attribute__((used)) static uint32_t
SubWord(uint32_t x)
{
 return ((uint32_t)S[x >> 24] << 24)
  | ((uint32_t)S[(x >> 16) & 0xFF] << 16)
  | ((uint32_t)S[(x >> 8) & 0xFF] << 8)
  | (uint32_t)S[x & 0xFF];
}
