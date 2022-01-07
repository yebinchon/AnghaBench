
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TYPE_FIELD_BITSIZE (struct type*,int ) ;
 int TYPE_FIELD_TYPE (struct type*,int ) ;
 int TYPE_LENGTH (int ) ;
 struct type* desc_base_type (struct type*) ;

__attribute__((used)) static int
fat_pntr_data_bitsize (struct type *type)
{
  type = desc_base_type (type);

  if (TYPE_FIELD_BITSIZE (type, 0) > 0)
    return TYPE_FIELD_BITSIZE (type, 0);
  else
    return TARGET_CHAR_BIT * TYPE_LENGTH (TYPE_FIELD_TYPE (type, 0));
}
