
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {int sf_crcount; int * sf_count; int sf_gsresp; } ;
struct ifmcaddr6 {int mca_flags; size_t mca_sfmode; int * mca_sfcount; } ;


 int MAF_GSQUERY ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;







__attribute__((used)) static int is_in(struct ifmcaddr6 *pmc, struct ip6_sf_list *psf, int type,
 int gdeleted, int sdeleted)
{
 switch (type) {
 case 128:
 case 129:
  if (gdeleted || sdeleted)
   return 0;
  if (!((pmc->mca_flags & MAF_GSQUERY) && !psf->sf_gsresp)) {
   if (pmc->mca_sfmode == MCAST_INCLUDE)
    return 1;



   if (psf->sf_count[MCAST_INCLUDE])
    return type == 128;
   return pmc->mca_sfcount[MCAST_EXCLUDE] ==
    psf->sf_count[MCAST_EXCLUDE];
  }
  return 0;
 case 130:
  if (gdeleted || sdeleted)
   return 0;
  return psf->sf_count[MCAST_INCLUDE] != 0;
 case 131:
  if (gdeleted || sdeleted)
   return 0;
  if (pmc->mca_sfcount[MCAST_EXCLUDE] == 0 ||
      psf->sf_count[MCAST_INCLUDE])
   return 0;
  return pmc->mca_sfcount[MCAST_EXCLUDE] ==
   psf->sf_count[MCAST_EXCLUDE];
 case 133:
  if (gdeleted || !psf->sf_crcount)
   return 0;
  return (pmc->mca_sfmode == MCAST_INCLUDE) ^ sdeleted;
 case 132:
  if (pmc->mca_sfmode == MCAST_INCLUDE)
   return gdeleted || (psf->sf_crcount && sdeleted);
  return psf->sf_crcount && !gdeleted && !sdeleted;
 }
 return 0;
}
