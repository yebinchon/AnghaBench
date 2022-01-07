
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef int bfd_boolean ;


 int push_type (struct pr_handle*,char const*) ;

__attribute__((used)) static bfd_boolean
pr_typedef_type (void *p, const char *name)
{
  struct pr_handle *info = (struct pr_handle *) p;

  return push_type (info, name);
}
