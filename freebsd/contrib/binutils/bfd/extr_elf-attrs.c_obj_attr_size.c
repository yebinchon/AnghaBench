
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int i; scalar_t__ s; } ;
typedef TYPE_1__ obj_attribute ;
typedef scalar_t__ bfd_vma ;


 scalar_t__ is_default_attr (TYPE_1__*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ uleb128_size (int) ;

__attribute__((used)) static bfd_vma
obj_attr_size (int tag, obj_attribute *attr)
{
  bfd_vma size;

  if (is_default_attr (attr))
    return 0;

  size = uleb128_size (tag);
  if (attr->type & 1)
    size += uleb128_size (attr->i);
  if (attr->type & 2)
    size += strlen ((char *)attr->s) + 1;
  return size;
}
