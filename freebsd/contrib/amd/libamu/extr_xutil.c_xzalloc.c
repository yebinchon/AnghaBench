
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ voidp ;


 int memset (scalar_t__,int ,int) ;
 scalar_t__ xmalloc (int) ;

voidp
xzalloc(int len)
{
  voidp p = xmalloc(len);

  if (p)
    memset(p, 0, len);
  return p;
}
