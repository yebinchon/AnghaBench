
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int h_reclaim; int h_granted; int h_lockowners; int h_count; int h_name; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dprintk (char*,int ) ;
 int list_empty (int *) ;

void nlm_release_host(struct nlm_host *host)
{
 if (host != ((void*)0)) {
  dprintk("lockd: release host %s\n", host->h_name);
  BUG_ON(atomic_read(&host->h_count) < 0);
  if (atomic_dec_and_test(&host->h_count)) {
   BUG_ON(!list_empty(&host->h_lockowners));
   BUG_ON(!list_empty(&host->h_granted));
   BUG_ON(!list_empty(&host->h_reclaim));
  }
 }
}
