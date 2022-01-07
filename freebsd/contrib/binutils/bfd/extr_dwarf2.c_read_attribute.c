
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comp_unit {int dummy; } ;
struct attribute {int name; } ;
struct attr_abbrev {int form; int name; } ;
typedef int bfd_byte ;


 int * read_attribute_value (struct attribute*,int ,struct comp_unit*,int *) ;

__attribute__((used)) static bfd_byte *
read_attribute (struct attribute *attr,
  struct attr_abbrev *abbrev,
  struct comp_unit *unit,
  bfd_byte *info_ptr)
{
  attr->name = abbrev->name;
  info_ptr = read_attribute_value (attr, abbrev->form, unit, info_ptr);
  return info_ptr;
}
