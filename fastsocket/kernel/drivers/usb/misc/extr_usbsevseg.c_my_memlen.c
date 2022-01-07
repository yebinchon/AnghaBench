
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline size_t my_memlen(const char *buf, size_t count)
{
 if (count > 0 && buf[count-1] == '\n')
  return count - 1;
 else
  return count;
}
