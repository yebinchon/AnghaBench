
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_itd {int* index; int * hw_bufp; int hw_next; } ;
struct ehci_iso_stream {int buf2; int buf1; int buf0; } ;
struct ehci_hcd {int dummy; } ;


 int EHCI_LIST_END (struct ehci_hcd*) ;

__attribute__((used)) static inline void
itd_init(struct ehci_hcd *ehci, struct ehci_iso_stream *stream,
  struct ehci_itd *itd)
{
 int i;


 itd->hw_next = EHCI_LIST_END(ehci);
 itd->hw_bufp [0] = stream->buf0;
 itd->hw_bufp [1] = stream->buf1;
 itd->hw_bufp [2] = stream->buf2;

 for (i = 0; i < 8; i++)
  itd->index[i] = -1;


}
