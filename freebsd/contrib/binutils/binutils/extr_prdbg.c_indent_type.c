
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_handle {unsigned int indent; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int append_type (struct pr_handle*,char*) ;

__attribute__((used)) static bfd_boolean
indent_type (struct pr_handle *info)
{
  unsigned int i;

  for (i = 0; i < info->indent; i++)
    {
      if (! append_type (info, " "))
 return FALSE;
    }

  return TRUE;
}
