
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int h_inuse; } ;



__attribute__((used)) static int
nlmsvc_mark_host(void *data, struct nlm_host *dummy)
{
 struct nlm_host *host = data;

 host->h_inuse = 1;
 return 0;
}
