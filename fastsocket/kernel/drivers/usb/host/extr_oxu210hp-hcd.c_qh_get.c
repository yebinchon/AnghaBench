
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qh {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct ehci_qh *qh_get(struct ehci_qh *qh)
{
 kref_get(&qh->kref);
 return qh;
}
