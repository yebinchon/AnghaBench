
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipx_interface {int refcnt; } ;


 int __ipxitf_down (struct ipx_interface*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

__attribute__((used)) static __inline__ void __ipxitf_put(struct ipx_interface *intrfc)
{
 if (atomic_dec_and_test(&intrfc->refcnt))
  __ipxitf_down(intrfc);
}
