
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int dummy; } ;


 int lockd_down () ;
 int nlm_release_host (struct nlm_host*) ;

void nlmclnt_done(struct nlm_host *host)
{
 nlm_release_host(host);
 lockd_down();
}
