
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_trust_anchor ;
typedef int br_x509_certificate ;


 scalar_t__ certificate_to_trust_anchor_inner (int *,int *) ;
 int * xblobdup (int *,int) ;

br_x509_trust_anchor *
certificate_to_trust_anchor(br_x509_certificate *xc)
{
 br_x509_trust_anchor ta;

 if (certificate_to_trust_anchor_inner(&ta, xc) < 0) {
  return ((void*)0);
 } else {
  return xblobdup(&ta, sizeof ta);
 }
}
