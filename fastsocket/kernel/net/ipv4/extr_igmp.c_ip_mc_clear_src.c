
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_sf_list {struct ip_sf_list* sf_next; } ;
struct ip_mc_list {size_t sfmode; int* sfcount; struct ip_sf_list* sources; struct ip_sf_list* tomb; } ;


 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int kfree (struct ip_sf_list*) ;

__attribute__((used)) static void ip_mc_clear_src(struct ip_mc_list *pmc)
{
 struct ip_sf_list *psf, *nextpsf;

 for (psf=pmc->tomb; psf; psf=nextpsf) {
  nextpsf = psf->sf_next;
  kfree(psf);
 }
 pmc->tomb = ((void*)0);
 for (psf=pmc->sources; psf; psf=nextpsf) {
  nextpsf = psf->sf_next;
  kfree(psf);
 }
 pmc->sources = ((void*)0);
 pmc->sfmode = MCAST_EXCLUDE;
 pmc->sfcount[MCAST_INCLUDE] = 0;
 pmc->sfcount[MCAST_EXCLUDE] = 1;
}
