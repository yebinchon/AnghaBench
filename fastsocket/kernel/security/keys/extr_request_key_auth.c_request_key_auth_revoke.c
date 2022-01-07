
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_key_auth {int * cred; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {int serial; TYPE_1__ payload; } ;


 int kenter (char*,int ) ;
 int put_cred (int *) ;

__attribute__((used)) static void request_key_auth_revoke(struct key *key)
{
 struct request_key_auth *rka = key->payload.data;

 kenter("{%d}", key->serial);

 if (rka->cred) {
  put_cred(rka->cred);
  rka->cred = ((void*)0);
 }
}
