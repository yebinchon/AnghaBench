
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ggc_alloc (size_t) ;

__attribute__((used)) static void *
stringpool_ggc_alloc (size_t x)
{
  return ggc_alloc (x);
}
