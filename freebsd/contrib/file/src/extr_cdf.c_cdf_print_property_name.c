
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ v; scalar_t__ n; } ;


 size_t __arraycount (TYPE_1__*) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;
 TYPE_1__* vn ;

int
cdf_print_property_name(char *buf, size_t bufsiz, uint32_t p)
{
 size_t i;

 for (i = 0; i < __arraycount(vn); i++)
  if (vn[i].v == p)
   return snprintf(buf, bufsiz, "%s", vn[i].n);
 return snprintf(buf, bufsiz, "%#x", p);
}
