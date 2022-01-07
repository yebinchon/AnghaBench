
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


struct TYPE_10__ {int qlen; int q; } ;
struct TYPE_9__ {int elen; int e; int nlen; int n; } ;
struct TYPE_11__ {TYPE_3__ ec; TYPE_2__ rsa; } ;
struct TYPE_12__ {int key_type; TYPE_4__ key; } ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_13__ {TYPE_5__ pkey; TYPE_1__ dn; } ;
typedef TYPE_6__ br_x509_trust_anchor ;




 int fprintf (int ,char*,int) ;
 int print_blob (char*,int ,int ) ;
 int sprintf (char*,char*,long) ;
 int stderr ;

__attribute__((used)) static int
print_ta_internals(br_x509_trust_anchor *ta, long ctr)
{
 char tmp[25];

 sprintf(tmp, "TA%ld_DN", ctr);
 print_blob(tmp, ta->dn.data, ta->dn.len);
 switch (ta->pkey.key_type) {
 case 128:
  sprintf(tmp, "TA%ld_RSA_N", ctr);
  print_blob(tmp, ta->pkey.key.rsa.n, ta->pkey.key.rsa.nlen);
  sprintf(tmp, "TA%ld_RSA_E", ctr);
  print_blob(tmp, ta->pkey.key.rsa.e, ta->pkey.key.rsa.elen);
  break;
 case 129:
  sprintf(tmp, "TA%ld_EC_Q", ctr);
  print_blob(tmp, ta->pkey.key.ec.q, ta->pkey.key.ec.qlen);
  break;
 default:
  fprintf(stderr, "ERROR: unknown anchor key type '%d'\n",
   ta->pkey.key_type);
  return -1;
 }
 return 0;
}
