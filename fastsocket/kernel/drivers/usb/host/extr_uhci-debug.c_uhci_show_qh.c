
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_qh {int dummy; } ;
struct uhci_hcd {int dummy; } ;



__attribute__((used)) static inline int uhci_show_qh(struct uhci_hcd *uhci,
  struct uhci_qh *qh, char *buf, int len, int space)
{
 return 0;
}
