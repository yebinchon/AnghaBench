
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int totalsize; } ;


 int TARGET_CHAR_BIT ;
 int TARGET_DOUBLE_BIT ;
 struct floatformat const* TARGET_DOUBLE_FORMAT ;
 int TARGET_FLOAT_BIT ;
 struct floatformat const* TARGET_FLOAT_FORMAT ;
 int TARGET_LONG_DOUBLE_BIT ;
 struct floatformat const* TARGET_LONG_DOUBLE_FORMAT ;

__attribute__((used)) static const struct floatformat *
floatformat_from_length (int len)
{
  if (len * TARGET_CHAR_BIT == TARGET_FLOAT_BIT)
    return TARGET_FLOAT_FORMAT;
  else if (len * TARGET_CHAR_BIT == TARGET_DOUBLE_BIT)
    return TARGET_DOUBLE_FORMAT;
  else if (len * TARGET_CHAR_BIT == TARGET_LONG_DOUBLE_BIT)
    return TARGET_LONG_DOUBLE_FORMAT;




  else if ((TARGET_LONG_DOUBLE_FORMAT != ((void*)0))
    && (len * TARGET_CHAR_BIT ==
               TARGET_LONG_DOUBLE_FORMAT->totalsize))
    return TARGET_LONG_DOUBLE_FORMAT;

  return ((void*)0);
}
