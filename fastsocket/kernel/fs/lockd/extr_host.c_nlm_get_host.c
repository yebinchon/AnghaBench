
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {scalar_t__ h_expires; int h_count; int h_name; } ;


 scalar_t__ NLM_HOST_EXPIRE ;
 int atomic_inc (int *) ;
 int dprintk (char*,int ) ;
 scalar_t__ jiffies ;

struct nlm_host * nlm_get_host(struct nlm_host *host)
{
 if (host) {
  dprintk("lockd: get host %s\n", host->h_name);
  atomic_inc(&host->h_count);
  host->h_expires = jiffies + NLM_HOST_EXPIRE;
 }
 return host;
}
