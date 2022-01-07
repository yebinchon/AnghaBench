
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int * stack; } ;
typedef int bfd_boolean ;


 int assert (int ) ;
 int substitute_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
pr_reference_type (void *p)
{
  struct pr_handle *info = (struct pr_handle *) p;

  assert (info->stack != ((void*)0));

  return substitute_type (info, "&|");
}
