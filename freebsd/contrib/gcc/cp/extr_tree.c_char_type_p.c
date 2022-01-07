
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int char_type_node ;
 scalar_t__ same_type_p (int ,int ) ;
 int signed_char_type_node ;
 int unsigned_char_type_node ;
 int wchar_type_node ;

int
char_type_p (tree type)
{
  return (same_type_p (type, char_type_node)
   || same_type_p (type, unsigned_char_type_node)
   || same_type_p (type, signed_char_type_node)
   || same_type_p (type, wchar_type_node));
}
