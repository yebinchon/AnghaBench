
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int q; } ;
struct TYPE_9__ {int e; int n; } ;
struct TYPE_11__ {TYPE_3__ ec; TYPE_2__ rsa; } ;
struct TYPE_12__ {int key_type; TYPE_4__ key; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_13__ {TYPE_5__ pkey; TYPE_1__ dn; } ;
typedef TYPE_6__ br_x509_trust_anchor ;




 int xfree (int ) ;

void
free_ta_contents(br_x509_trust_anchor *ta)
{
 xfree(ta->dn.data);
 switch (ta->pkey.key_type) {
 case 128:
  xfree(ta->pkey.key.rsa.n);
  xfree(ta->pkey.key.rsa.e);
  break;
 case 129:
  xfree(ta->pkey.key.ec.q);
  break;
 }
}
