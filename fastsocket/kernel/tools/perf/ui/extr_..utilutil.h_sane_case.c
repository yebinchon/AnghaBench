
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ALPHA ;
 scalar_t__ sane_istest (int,int ) ;

__attribute__((used)) static inline int sane_case(int x, int high)
{
 if (sane_istest(x, GIT_ALPHA))
  x = (x & ~0x20) | high;
 return x;
}
