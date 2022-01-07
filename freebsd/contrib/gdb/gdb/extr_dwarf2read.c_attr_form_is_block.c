
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attribute {scalar_t__ form; } ;


 scalar_t__ DW_FORM_block ;
 scalar_t__ DW_FORM_block1 ;
 scalar_t__ DW_FORM_block2 ;
 scalar_t__ DW_FORM_block4 ;

__attribute__((used)) static int
attr_form_is_block (struct attribute *attr)
{
  return (attr == ((void*)0) ? 0 :
      attr->form == DW_FORM_block1
      || attr->form == DW_FORM_block2
      || attr->form == DW_FORM_block4
      || attr->form == DW_FORM_block);
}
