
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;
 void* xmalloc (size_t) ;

void *
xblobdup(const void *src, size_t len)
{
 void *buf;

 buf = xmalloc(len);
 memcpy(buf, src, len);
 return buf;
}
