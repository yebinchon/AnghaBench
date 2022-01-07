
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_sf_list {scalar_t__ sf_inaddr; int* sf_count; struct ip_sf_list* sf_next; } ;
struct ip_mc_list {int interface; struct ip_sf_list* sources; } ;
typedef scalar_t__ __be32 ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int ip_rt_multicast_event (int ) ;
 struct ip_sf_list* kzalloc (int,int ) ;

__attribute__((used)) static int ip_mc_add1_src(struct ip_mc_list *pmc, int sfmode,
 __be32 *psfsrc, int delta)
{
 struct ip_sf_list *psf, *psf_prev;

 psf_prev = ((void*)0);
 for (psf=pmc->sources; psf; psf=psf->sf_next) {
  if (psf->sf_inaddr == *psfsrc)
   break;
  psf_prev = psf;
 }
 if (!psf) {
  psf = kzalloc(sizeof(*psf), GFP_ATOMIC);
  if (!psf)
   return -ENOBUFS;
  psf->sf_inaddr = *psfsrc;
  if (psf_prev) {
   psf_prev->sf_next = psf;
  } else
   pmc->sources = psf;
 }
 psf->sf_count[sfmode]++;
 if (psf->sf_count[sfmode] == 1) {
  ip_rt_multicast_event(pmc->interface);
 }
 return 0;
}
