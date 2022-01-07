
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int dummy; } ;



__attribute__((used)) static int
nlmsvc_same_host(void *data, struct nlm_host *other)
{
 struct nlm_host *host = data;

 return host == other;
}
