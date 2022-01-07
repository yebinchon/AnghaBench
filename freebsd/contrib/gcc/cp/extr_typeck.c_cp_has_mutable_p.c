
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CLASSTYPE_HAS_MUTABLE (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 int strip_array_types (int ) ;

bool
cp_has_mutable_p (tree type)
{
  type = strip_array_types (type);

  return CLASS_TYPE_P (type) && CLASSTYPE_HAS_MUTABLE (type);
}
