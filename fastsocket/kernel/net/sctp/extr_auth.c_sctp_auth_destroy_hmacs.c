
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_hash {int dummy; } ;


 int SCTP_AUTH_NUM_HMACS ;
 int crypto_free_hash (struct crypto_hash*) ;
 int kfree (struct crypto_hash**) ;

void sctp_auth_destroy_hmacs(struct crypto_hash *auth_hmacs[])
{
 int i;

 if (!auth_hmacs)
  return;

 for (i = 0; i < SCTP_AUTH_NUM_HMACS; i++)
 {
  if (auth_hmacs[i])
   crypto_free_hash(auth_hmacs[i]);
 }
 kfree(auth_hmacs);
}
