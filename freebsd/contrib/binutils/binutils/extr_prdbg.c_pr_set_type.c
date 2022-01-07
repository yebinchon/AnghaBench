
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {int dummy; } ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int append_type (struct pr_handle*,char*) ;
 int prepend_type (struct pr_handle*,char*) ;
 int substitute_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
pr_set_type (void *p, bfd_boolean bitstringp)
{
  struct pr_handle *info = (struct pr_handle *) p;

  if (! substitute_type (info, ""))
    return FALSE;

  if (! prepend_type (info, "set { ")
      || ! append_type (info, " }"))
    return FALSE;

  if (bitstringp)
    {
      if (! append_type (info, "/* bitstring */"))
 return FALSE;
    }

  return TRUE;
}
