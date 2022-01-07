
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_host {TYPE_1__* h_nsmhandle; scalar_t__ h_server; } ;
struct TYPE_2__ {int sm_sticky; } ;



__attribute__((used)) static int
nlmsvc_is_client(void *data, struct nlm_host *dummy)
{
 struct nlm_host *host = data;

 if (host->h_server) {




  if (host->h_nsmhandle)
   host->h_nsmhandle->sm_sticky = 1;
  return 1;
 } else
  return 0;
}
