
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_iso_sched {int td_list; } ;
struct ehci_iso_packet {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct ehci_iso_sched* kzalloc (int,int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static struct ehci_iso_sched *
iso_sched_alloc (unsigned packets, gfp_t mem_flags)
{
 struct ehci_iso_sched *iso_sched;
 int size = sizeof *iso_sched;

 size += packets * sizeof (struct ehci_iso_packet);
 iso_sched = kzalloc(size, mem_flags);
 if (likely (iso_sched != ((void*)0))) {
  INIT_LIST_HEAD (&iso_sched->td_list);
 }
 return iso_sched;
}
