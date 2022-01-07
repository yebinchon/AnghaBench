
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int CLASSTYPE_DESTRUCTORS (scalar_t__) ;
 scalar_t__ CLASSTYPE_LAZY_DESTRUCTOR (scalar_t__) ;
 int CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int TREE_NOTHROW (int ) ;
 int lazily_declare_fn (int ,scalar_t__) ;
 int sfk_destructor ;

__attribute__((used)) static int
dtor_nothrow (tree type)
{
  if (type == NULL_TREE)
    return 0;

  if (!CLASS_TYPE_P (type))
    return 1;

  if (CLASSTYPE_LAZY_DESTRUCTOR (type))
    lazily_declare_fn (sfk_destructor, type);

  return TREE_NOTHROW (CLASSTYPE_DESTRUCTORS (type));
}
