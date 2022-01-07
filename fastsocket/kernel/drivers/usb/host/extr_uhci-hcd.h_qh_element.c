
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_qh {int element; } ;
typedef int __le32 ;


 int barrier () ;

__attribute__((used)) static inline __le32 qh_element(struct uhci_qh *qh) {
 __le32 element = qh->element;

 barrier();
 return element;
}
