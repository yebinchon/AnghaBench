
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPOIL (int ) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void xmemset(void *dest, void *src, size_t n)
{
  SPOIL(memset(dest, 0, n));
}
