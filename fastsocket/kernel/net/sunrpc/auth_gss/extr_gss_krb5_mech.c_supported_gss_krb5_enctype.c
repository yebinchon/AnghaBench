
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int etype; } ;


 int num_supported_enctypes ;
 TYPE_1__* supported_gss_krb5_enctypes ;

__attribute__((used)) static int
supported_gss_krb5_enctype(int etype)
{
 int i;
 for (i = 0; i < num_supported_enctypes; i++)
  if (supported_gss_krb5_enctypes[i].etype == etype)
   return 1;
 return 0;
}
