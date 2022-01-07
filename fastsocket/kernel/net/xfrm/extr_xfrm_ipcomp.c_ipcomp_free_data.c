
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipcomp_data {scalar_t__ tfms; } ;


 int ipcomp_free_scratches () ;
 int ipcomp_free_tfms (scalar_t__) ;

__attribute__((used)) static void ipcomp_free_data(struct ipcomp_data *ipcd)
{
 if (ipcd->tfms)
  ipcomp_free_tfms(ipcd->tfms);
 ipcomp_free_scratches();
}
