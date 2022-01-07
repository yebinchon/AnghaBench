
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ valueT ;
typedef int offsetT ;


 int sizeof_sleb128 (int ) ;
 int sizeof_uleb128 (scalar_t__) ;

int
sizeof_leb128 (valueT value, int sign)
{
  if (sign)
    return sizeof_sleb128 ((offsetT) value);
  else
    return sizeof_uleb128 (value);
}
