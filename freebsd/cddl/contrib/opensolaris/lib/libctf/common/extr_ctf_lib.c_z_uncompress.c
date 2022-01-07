
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_2__ {int (* z_uncompress ) (void*,int *,void const*,size_t) ;} ;


 int stub1 (void*,int *,void const*,size_t) ;
 TYPE_1__ zlib ;

int
z_uncompress(void *dst, size_t *dstlen, const void *src, size_t srclen)
{
 return (zlib.z_uncompress(dst, (ulong_t *)dstlen, src, srclen));
}
