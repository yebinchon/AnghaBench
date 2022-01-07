
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void swapaddr(unsigned char *src, unsigned char *dst)
{
 dst[0] = src[3];
 dst[1] = src[2];
 dst[2] = src[1];
 dst[3] = src[0];
}
