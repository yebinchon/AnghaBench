
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ simple_strtol (char*,int *,int) ;

void ecryptfs_from_hex(char *dst, char *src, int dst_size)
{
 int x;
 char tmp[3] = { 0, };

 for (x = 0; x < dst_size; x++) {
  tmp[0] = src[x * 2];
  tmp[1] = src[x * 2 + 1];
  dst[x] = (unsigned char)simple_strtol(tmp, ((void*)0), 16);
 }
}
