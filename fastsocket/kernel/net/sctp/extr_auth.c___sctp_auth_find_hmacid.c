
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be16 ;



__attribute__((used)) static int __sctp_auth_find_hmacid(__be16 *hmacs, int n_elts, __be16 hmac_id)
{
 int found = 0;
 int i;

 for (i = 0; i < n_elts; i++) {
  if (hmac_id == hmacs[i]) {
   found = 1;
   break;
  }
 }

 return found;
}
