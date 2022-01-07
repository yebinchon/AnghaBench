
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_pe* pe; } ;
struct ip_vs_pe {int dummy; } ;



void ip_vs_bind_pe(struct ip_vs_service *svc, struct ip_vs_pe *pe)
{
 svc->pe = pe;
}
