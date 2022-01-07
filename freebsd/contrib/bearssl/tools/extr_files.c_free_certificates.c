
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ br_x509_certificate ;


 int xfree (TYPE_1__*) ;

void
free_certificates(br_x509_certificate *certs, size_t num)
{
 size_t u;

 for (u = 0; u < num; u ++) {
  xfree(certs[u].data);
 }
 xfree(certs);
}
