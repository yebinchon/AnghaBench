
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* KEY ;



__attribute__((used)) static size_t
keylen(KEY s)
{
  size_t len = 0;
  for (; *s; s++, len++);
  return len;
}
