
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uLongf ;


 int Z_OK ;
 int compress2 (void*,size_t*,void const*,size_t,int) ;

int
z_compress_level(void *dst, size_t *dstlen, const void *src, size_t srclen,
    int level)
{
 int ret;
 uLongf len = *dstlen;

 if ((ret = compress2(dst, &len, src, srclen, level)) == Z_OK)
  *dstlen = (size_t)len;

 return (ret);
}
