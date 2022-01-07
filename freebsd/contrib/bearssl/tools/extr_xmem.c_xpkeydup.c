
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int qlen; void* q; int curve; } ;
struct TYPE_8__ {int elen; void* e; int nlen; void* n; } ;
struct TYPE_10__ {TYPE_2__ ec; TYPE_1__ rsa; } ;
struct TYPE_11__ {int key_type; TYPE_3__ key; } ;
typedef TYPE_4__ br_x509_pkey ;




 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 int stderr ;
 void* xblobdup (void*,int ) ;
 TYPE_4__* xmalloc (int) ;

br_x509_pkey *
xpkeydup(const br_x509_pkey *pk)
{
 br_x509_pkey *pk2;

 pk2 = xmalloc(sizeof *pk2);
 pk2->key_type = pk->key_type;
 switch (pk->key_type) {
 case 128:
  pk2->key.rsa.n = xblobdup(pk->key.rsa.n, pk->key.rsa.nlen);
  pk2->key.rsa.nlen = pk->key.rsa.nlen;
  pk2->key.rsa.e = xblobdup(pk->key.rsa.e, pk->key.rsa.elen);
  pk2->key.rsa.elen = pk->key.rsa.elen;
  break;
 case 129:
  pk2->key.ec.curve = pk->key.ec.curve;
  pk2->key.ec.q = xblobdup(pk->key.ec.q, pk->key.ec.qlen);
  pk2->key.ec.qlen = pk->key.ec.qlen;
  break;
 default:

  fprintf(stderr, "Unknown public key type: %u\n",
   (unsigned)pk->key_type);
  exit(EXIT_FAILURE);



 }
 return pk2;
}
