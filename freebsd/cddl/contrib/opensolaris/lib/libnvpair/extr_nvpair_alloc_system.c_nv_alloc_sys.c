
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 void* malloc (size_t) ;

__attribute__((used)) static void *
nv_alloc_sys(nv_alloc_t *nva, size_t size)
{
 return (malloc(size));
}
