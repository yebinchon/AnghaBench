
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_pages_exact (void*,size_t) ;
 int pr_debug (char*,void*,size_t) ;

__attribute__((used)) static void fsl_diu_free(void *virt, size_t size)
{
 pr_debug("virt=%p size=%zu\n", virt, size);

 if (virt && size)
  free_pages_exact(virt, size);
}
