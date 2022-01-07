
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uLongf ;


 int Z_OK ;
 int uncompress (void*,size_t*,void const*,size_t) ;

int
z_uncompress(void *dst, size_t *dstlen, const void *src, size_t srclen)
{
 int ret;
 uLongf len = *dstlen;

 if ((ret = uncompress(dst, &len, src, srclen)) == Z_OK)
  *dstlen = (size_t)len;

 return (ret);
}
