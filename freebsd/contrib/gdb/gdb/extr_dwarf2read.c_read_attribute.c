
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct attribute {int name; } ;
struct attr_abbrev {int form; int name; } ;
typedef int bfd ;


 char* read_attribute_value (struct attribute*,int ,int *,char*,struct dwarf2_cu*) ;

__attribute__((used)) static char *
read_attribute (struct attribute *attr, struct attr_abbrev *abbrev,
  bfd *abfd, char *info_ptr, struct dwarf2_cu *cu)
{
  attr->name = abbrev->name;
  return read_attribute_value (attr, abbrev->form, abfd, info_ptr, cu);
}
