
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bdaddr_t ;



void baswap(bdaddr_t *dst, bdaddr_t *src)
{
 unsigned char *d = (unsigned char *) dst;
 unsigned char *s = (unsigned char *) src;
 unsigned int i;

 for (i = 0; i < 6; i++)
  d[i] = s[5 - i];
}
