
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int curve; } ;
struct TYPE_7__ {TYPE_1__ ec; } ;
struct TYPE_8__ {int key_type; TYPE_2__ key; } ;
struct TYPE_9__ {int flags; TYPE_3__ pkey; } ;
typedef TYPE_4__ br_x509_trust_anchor ;




 int BR_X509_TA_CA ;
 char* curve_to_sym (int) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
print_ta(br_x509_trust_anchor *ta, long ctr)
{
 char tmp[25];

 printf("\t{\n");
 printf("\t\t{ (unsigned char *)TA%ld_DN, sizeof TA%ld_DN },\n",
  ctr, ctr);
 printf("\t\t%s,\n", (ta->flags & BR_X509_TA_CA)
  ? "BR_X509_TA_CA" : "0");
 printf("\t\t{\n");
 switch (ta->pkey.key_type) {
  const char *cname;

 case 128:
  printf("\t\t\tBR_KEYTYPE_RSA,\n");
  printf("\t\t\t{ .rsa = {\n");
  printf("\t\t\t\t(unsigned char *)TA%ld_RSA_N,"
   " sizeof TA%ld_RSA_N,\n", ctr, ctr);
  printf("\t\t\t\t(unsigned char *)TA%ld_RSA_E,"
   " sizeof TA%ld_RSA_E,\n", ctr, ctr);
  printf("\t\t\t} }\n");
  break;
 case 129:
  printf("\t\t\tBR_KEYTYPE_EC,\n");
  printf("\t\t\t{ .ec = {\n");
  cname = curve_to_sym(ta->pkey.key.ec.curve);
  if (cname == ((void*)0)) {
   sprintf(tmp, "%d", ta->pkey.key.ec.curve);
   cname = tmp;
  }
  printf("\t\t\t\t%s,\n", cname);
  printf("\t\t\t\t(unsigned char *)TA%ld_EC_Q,"
   " sizeof TA%ld_EC_Q,\n", ctr, ctr);
  printf("\t\t\t} }\n");
 }
 printf("\t\t}\n");
 printf("\t}");
}
