
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* kmalloc_track_caller (size_t,int ) ;
 int memcpy (void*,void const*,size_t) ;

void *kmemdup(const void *src, size_t len, gfp_t gfp)
{
 void *p;

 p = kmalloc_track_caller(len, gfp);
 if (p)
  memcpy(p, src, len);
 return p;
}
