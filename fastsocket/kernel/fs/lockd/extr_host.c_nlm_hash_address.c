
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;




 int NLM_HOST_NRHASH ;
 unsigned int __nlm_hash_addr4 (struct sockaddr const*) ;
 unsigned int __nlm_hash_addr6 (struct sockaddr const*) ;

__attribute__((used)) static unsigned int nlm_hash_address(const struct sockaddr *sap)
{
 unsigned int hash;

 switch (sap->sa_family) {
 case 129:
  hash = __nlm_hash_addr4(sap);
  break;
 case 128:
  hash = __nlm_hash_addr6(sap);
  break;
 default:
  hash = 0;
 }
 return hash & (NLM_HOST_NRHASH - 1);
}
