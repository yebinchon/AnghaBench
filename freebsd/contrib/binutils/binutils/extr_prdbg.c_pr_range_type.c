
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int * stack; } ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ append_type (struct pr_handle*,char*) ;
 int assert (int ) ;
 scalar_t__ prepend_type (struct pr_handle*,char*) ;
 int print_vma (int ,char*,int,int) ;
 int substitute_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
pr_range_type (void *p, bfd_signed_vma lower, bfd_signed_vma upper)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char abl[20], abu[20];

  assert (info->stack != ((void*)0));

  if (! substitute_type (info, ""))
    return FALSE;

  print_vma (lower, abl, FALSE, FALSE);
  print_vma (upper, abu, FALSE, FALSE);

  return (prepend_type (info, "range (")
   && append_type (info, "):")
   && append_type (info, abl)
   && append_type (info, ":")
   && append_type (info, abu));
}
