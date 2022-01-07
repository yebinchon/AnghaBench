
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int * pe; } ;



void ip_vs_unbind_pe(struct ip_vs_service *svc)
{
 svc->pe = ((void*)0);
}
