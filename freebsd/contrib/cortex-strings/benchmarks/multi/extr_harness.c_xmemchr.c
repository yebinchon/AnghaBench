
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPOIL (int ) ;
 int memchr (void*,int,size_t) ;

__attribute__((used)) static void xmemchr(void *dest, void *src, size_t n)
{

  ((char *)src)[n-1] = 32;
  SPOIL(memchr(src, 32, n));
}
