
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__* coefficient_sizes ;

__attribute__((used)) static u16
snd_nm256_get_start_offset(int which)
{
 u16 offset = 0;
 while (which-- > 0)
  offset += coefficient_sizes[which];
 return offset;
}
