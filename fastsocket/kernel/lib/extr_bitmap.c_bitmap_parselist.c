
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __bitmap_parselist (char const*,int,int ,unsigned long*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int bitmap_parselist(const char *bp, unsigned long *maskp, int nmaskbits)
{
 char *nl = strchr(bp, '\n');
 int len;

 if (nl)
  len = nl - bp;
 else
  len = strlen(bp);

 return __bitmap_parselist(bp, len, 0, maskp, nmaskbits);
}
