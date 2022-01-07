
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {struct header_iter* private; struct trace_seq seq; } ;
struct header_iter {int dev; } ;


 int GFP_KERNEL ;
 int PCI_ANY_ID ;
 struct header_iter* kzalloc (int,int ) ;
 int pci_get_device (int ,int ,int *) ;
 int trace_seq_printf (struct trace_seq*,char*) ;

__attribute__((used)) static void mmio_pipe_open(struct trace_iterator *iter)
{
 struct header_iter *hiter;
 struct trace_seq *s = &iter->seq;

 trace_seq_printf(s, "VERSION 20070824\n");

 hiter = kzalloc(sizeof(*hiter), GFP_KERNEL);
 if (!hiter)
  return;

 hiter->dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
 iter->private = hiter;
}
