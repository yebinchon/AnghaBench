
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qh {int kref; } ;


 int kref_put (int *,int ) ;
 int qh_destroy ;

__attribute__((used)) static inline void qh_put(struct ehci_qh *qh)
{
 kref_put(&qh->kref, qh_destroy);
}
