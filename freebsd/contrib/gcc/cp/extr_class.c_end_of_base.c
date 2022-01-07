
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_OFFSET (int ) ;
 int BINFO_TYPE (int ) ;
 int CLASSTYPE_SIZE_UNIT (int ) ;
 int PLUS_EXPR ;
 int TYPE_SIZE_UNIT (int ) ;
 scalar_t__ is_empty_class (int ) ;
 int size_binop (int ,int ,int ) ;

__attribute__((used)) static tree
end_of_base (tree binfo)
{
  tree size;

  if (is_empty_class (BINFO_TYPE (binfo)))



    size = TYPE_SIZE_UNIT (BINFO_TYPE (binfo));
  else
    size = CLASSTYPE_SIZE_UNIT (BINFO_TYPE (binfo));

  return size_binop (PLUS_EXPR, BINFO_OFFSET (binfo), size);
}
