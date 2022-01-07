
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 int free (void*) ;

__attribute__((used)) static void
nv_free_sys(nv_alloc_t *nva, void *buf, size_t size)
{
 free(buf);
}
