
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int adfs_readname(char *buf, char *ptr, int maxlen)
{
 char *old_buf = buf;

 while ((unsigned char)*ptr >= ' ' && maxlen--) {
  if (*ptr == '/')
   *buf++ = '.';
  else
   *buf++ = *ptr;
  ptr++;
 }
 *buf = '\0';

 return buf - old_buf;
}
