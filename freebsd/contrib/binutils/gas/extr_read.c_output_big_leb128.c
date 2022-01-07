
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LITTLENUM_TYPE ;


 int output_big_sleb128 (char*,int *,int) ;
 int output_big_uleb128 (char*,int *,int) ;

__attribute__((used)) static int
output_big_leb128 (char *p, LITTLENUM_TYPE *bignum, int size, int sign)
{
  if (sign)
    return output_big_sleb128 (p, bignum, size);
  else
    return output_big_uleb128 (p, bignum, size);
}
