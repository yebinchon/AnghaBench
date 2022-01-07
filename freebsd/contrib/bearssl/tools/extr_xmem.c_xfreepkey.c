
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* q; } ;
struct TYPE_7__ {TYPE_4__* e; TYPE_4__* n; } ;
struct TYPE_9__ {TYPE_2__ ec; TYPE_1__ rsa; } ;
struct TYPE_10__ {int key_type; TYPE_3__ key; } ;
typedef TYPE_4__ br_x509_pkey ;




 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 int stderr ;
 int xfree (TYPE_4__*) ;

void
xfreepkey(br_x509_pkey *pk)
{
 if (pk != ((void*)0)) {
  switch (pk->key_type) {
  case 128:
   xfree(pk->key.rsa.n);
   xfree(pk->key.rsa.e);
   break;
  case 129:
   xfree(pk->key.ec.q);
   break;
  default:

   fprintf(stderr, "Unknown public key type: %u\n",
    (unsigned)pk->key_type);
   exit(EXIT_FAILURE);



  }
  xfree(pk);
 }
}
