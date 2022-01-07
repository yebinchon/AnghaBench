
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int qlen; int q; int curve; } ;
struct TYPE_7__ {int elen; int e; int nlen; int n; } ;
struct TYPE_9__ {TYPE_2__ ec; TYPE_1__ rsa; } ;
struct TYPE_10__ {int key_type; TYPE_3__ key; } ;
typedef TYPE_4__ br_x509_pkey ;




 int EXIT_FAILURE ;
 int eqbigint (int ,int ,int ,int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,int) ;
 int memcmp (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static int
eqpkey(const br_x509_pkey *pk1, const br_x509_pkey *pk2)
{
 if (pk1 == pk2) {
  return 1;
 }
 if (pk1 == ((void*)0) || pk2 == ((void*)0)) {
  return 0;
 }
 if (pk1->key_type != pk2->key_type) {
  return 0;
 }
 switch (pk1->key_type) {
 case 128:
  return eqbigint(pk1->key.rsa.n, pk1->key.rsa.nlen,
   pk2->key.rsa.n, pk2->key.rsa.nlen)
   && eqbigint(pk1->key.rsa.e, pk1->key.rsa.elen,
   pk2->key.rsa.e, pk2->key.rsa.elen);
 case 129:
  return pk1->key.ec.curve == pk2->key.ec.curve
   && pk1->key.ec.qlen == pk2->key.ec.qlen
   && memcmp(pk1->key.ec.q,
    pk2->key.ec.q, pk1->key.ec.qlen) == 0;
 default:
  fprintf(stderr, "unknown key type: %d\n", pk1->key_type);
  exit(EXIT_FAILURE);
  break;
 }
 return 0;
}
