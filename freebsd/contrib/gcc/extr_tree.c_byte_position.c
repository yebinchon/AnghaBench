
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_FIELD_BIT_OFFSET (int ) ;
 int DECL_FIELD_OFFSET (int ) ;
 int byte_from_pos (int ,int ) ;

tree
byte_position (tree field)
{
  return byte_from_pos (DECL_FIELD_OFFSET (field),
   DECL_FIELD_BIT_OFFSET (field));
}
