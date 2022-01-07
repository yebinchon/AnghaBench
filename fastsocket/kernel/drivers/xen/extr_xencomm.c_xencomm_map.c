
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencomm_handle {int dummy; } ;
struct xencomm_desc {int dummy; } ;


 int GFP_KERNEL ;
 int xencomm_create (void*,unsigned long,struct xencomm_desc**,int ) ;
 struct xencomm_handle* xencomm_create_inline (void*) ;
 scalar_t__ xencomm_is_phys_contiguous (unsigned long) ;
 struct xencomm_handle* xencomm_pa (struct xencomm_desc*) ;

struct xencomm_handle *xencomm_map(void *ptr, unsigned long bytes)
{
 int rc;
 struct xencomm_desc *desc;

 if (xencomm_is_phys_contiguous((unsigned long)ptr))
  return xencomm_create_inline(ptr);

 rc = xencomm_create(ptr, bytes, &desc, GFP_KERNEL);

 if (rc || desc == ((void*)0))
  return ((void*)0);

 return xencomm_pa(desc);
}
