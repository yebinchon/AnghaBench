
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
get_channel(unsigned char cmd)
{
 int p = cmd & 0x0f;
 if (p == 0)
  p = 9;
 else if (p < 10)
  p--;
 return p;
}
