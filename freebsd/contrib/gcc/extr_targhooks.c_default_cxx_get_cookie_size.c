
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INT_CST_LT_UNSIGNED (int ,int ) ;
 int TYPE_ALIGN_UNIT (int ) ;
 int size_in_bytes (int ) ;
 int size_int (int ) ;
 int sizetype ;

tree
default_cxx_get_cookie_size (tree type)
{
  tree cookie_size;



  tree sizetype_size;
  tree type_align;

  sizetype_size = size_in_bytes (sizetype);
  type_align = size_int (TYPE_ALIGN_UNIT (type));
  if (INT_CST_LT_UNSIGNED (type_align, sizetype_size))
    cookie_size = sizetype_size;
  else
    cookie_size = type_align;

  return cookie_size;
}
