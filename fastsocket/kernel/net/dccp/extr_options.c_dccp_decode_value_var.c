
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int const DCCP_OPTVAL_MAXLEN ;

u64 dccp_decode_value_var(const u8 *bf, const u8 len)
{
 u64 value = 0;

 if (len >= DCCP_OPTVAL_MAXLEN)
  value += ((u64)*bf++) << 40;
 if (len > 4)
  value += ((u64)*bf++) << 32;
 if (len > 3)
  value += ((u64)*bf++) << 24;
 if (len > 2)
  value += ((u64)*bf++) << 16;
 if (len > 1)
  value += ((u64)*bf++) << 8;
 if (len > 0)
  value += *bf;

 return value;
}
