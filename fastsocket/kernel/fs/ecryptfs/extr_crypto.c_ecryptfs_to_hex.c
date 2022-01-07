
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char) ;

void ecryptfs_to_hex(char *dst, char *src, size_t src_size)
{
 int x;

 for (x = 0; x < src_size; x++)
  sprintf(&dst[x * 2], "%.2x", (unsigned char)src[x]);
}
