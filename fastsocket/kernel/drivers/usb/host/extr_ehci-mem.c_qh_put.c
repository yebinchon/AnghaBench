
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qh {int refcount; } ;


 int qh_destroy (struct ehci_qh*) ;

__attribute__((used)) static inline void qh_put (struct ehci_qh *qh)
{
 if (!--qh->refcount)
  qh_destroy(qh);
}
