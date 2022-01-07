
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int x25_pacsize_to_bytes(unsigned int pacsize)
{
 int bytes = 1;

 if (!pacsize)
  return 128;

 while (pacsize-- > 0)
  bytes *= 2;

 return bytes;
}
