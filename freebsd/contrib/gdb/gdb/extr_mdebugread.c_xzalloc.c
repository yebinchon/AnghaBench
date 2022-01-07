
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,unsigned int) ;
 void* xmalloc (unsigned int) ;

__attribute__((used)) static void *
xzalloc (unsigned int size)
{
  void *p = xmalloc (size);

  memset (p, 0, size);
  return p;
}
