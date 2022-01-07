
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ push_type (struct pr_handle*,char*) ;
 int sprintf (char*,char*,char*,unsigned int) ;

__attribute__((used)) static bfd_boolean
pr_int_type (void *p, unsigned int size, bfd_boolean unsignedp)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[10];

  sprintf (ab, "%sint%d", unsignedp ? "u" : "", size * 8);
  return push_type (info, ab);
}
