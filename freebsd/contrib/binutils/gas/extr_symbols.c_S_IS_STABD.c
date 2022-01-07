
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 scalar_t__ S_GET_NAME (int *) ;

int
S_IS_STABD (symbolS *s)
{
  return S_GET_NAME (s) == 0;
}
