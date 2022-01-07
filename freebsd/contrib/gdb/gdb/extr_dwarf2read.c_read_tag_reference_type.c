
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct comp_unit_head {int addr_size; } ;
struct dwarf2_cu {struct comp_unit_head header; } ;
struct die_info {struct type* type; } ;
struct attribute {int dummy; } ;
typedef int TYPE_LENGTH ;


 int DW_AT_byte_size ;
 int DW_UNSND (struct attribute*) ;
 int die_type (struct die_info*,struct dwarf2_cu*) ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 struct type* lookup_reference_type (int ) ;

__attribute__((used)) static void
read_tag_reference_type (struct die_info *die, struct dwarf2_cu *cu)
{
  struct comp_unit_head *cu_header = &cu->header;
  struct type *type;
  struct attribute *attr;

  if (die->type)
    {
      return;
    }

  type = lookup_reference_type (die_type (die, cu));
  attr = dwarf2_attr (die, DW_AT_byte_size, cu);
  if (attr)
    {
      TYPE_LENGTH (type) = DW_UNSND (attr);
    }
  else
    {
      TYPE_LENGTH (type) = cu_header->addr_size;
    }
  die->type = type;
}
