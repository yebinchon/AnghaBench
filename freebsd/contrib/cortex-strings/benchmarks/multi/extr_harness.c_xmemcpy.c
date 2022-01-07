
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPOIL (int ) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static void xmemcpy(void *dest, void *src, size_t n)
{
  SPOIL(memcpy(dest, src, n));
}
