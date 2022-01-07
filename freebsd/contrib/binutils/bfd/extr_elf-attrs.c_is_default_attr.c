
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ i; scalar_t__* s; } ;
typedef TYPE_1__ obj_attribute ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
is_default_attr (obj_attribute *attr)
{
  if ((attr->type & 1) && attr->i != 0)
    return FALSE;
  if ((attr->type & 2) && attr->s && *attr->s)
    return FALSE;

  return TRUE;
}
